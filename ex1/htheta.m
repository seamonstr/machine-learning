% htheta. theta and X are both column vectors.
function retval = htheta (theta, X)
	% fprintf("-======-\n");
	% theta
	% X
	% fprintf("-======-\n");
	retval = 1 / (1 + (e .^ (-1 * (theta' * X ))))
endfunction