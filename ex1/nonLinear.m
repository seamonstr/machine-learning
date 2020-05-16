
1;

function retval = costFunc(theta, X, y)
	sum = 0;
	count = 0;
	for i = [1 : size(X, 1)]
		xCost = ((htheta(theta', X(i, :)') - y(i)) .^ 2) / 2;
		if xCost == 1
			break
		end
		sum += xCost
		count += 1
	end
	retval = sum / count;
endfunction

% htheta. theta and X are both column vectors.
function retval = htheta (theta, X)
	% fprintf("-======-\n");
	% theta
	% X
	% fprintf("-======-\n");
	retval = 1 / (1 + (e .^ (-1 * (theta' * X ))))
endfunction

clear ; close all; clc;

fprintf('Loading data ...\n');

%% Load Data
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

for i = [1 : m]
	if y(i) >= 400000 
		y(i) = 1;
	else y(i) = 0;
	end;
end;

% Add intercept term to X
X = [ones(m, 1) X];

theta = [5 -0.00125, 1];
costsX = [theta(2) : 0.001 : theta(2) + 0.1];
costsY = zeros(length(costsX), 1);
for i = 1 : length(costsX)
	theta(2) = costsX(i);
	% size(costFunc(theta, X, y))
	costsY(i) = costFunc(theta, X, y);
end

plot(costsX, costsY);

