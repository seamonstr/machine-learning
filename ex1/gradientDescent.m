function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    sum = zeros(1, size(theta, 1));
    for i = 1 : size(X, 1)
        % The error rate for this training example - scalar.
        errorRate = (X(i,:) * theta - y(i));
        % This training example, multiplied by the error rate
        thisRow = errorRate * X(i, :);
        % Add the row's results to the sum
        sum += thisRow;
    end

    delta = sum / m;
    theta = theta - (alpha * delta)';

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
