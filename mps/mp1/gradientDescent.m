function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    delta = (1/m)*sum(X.*repmat((X*theta - y), 1, size(X,2)));
    
    
    theta = (theta' - (alpha * delta))';

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
