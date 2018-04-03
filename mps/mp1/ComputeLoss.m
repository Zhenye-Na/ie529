function J = ComputeLoss(X, y, theta)

m = length(y); % number of training examples

J = 0;

H = X * theta - y;
J = (1 / (2 * m)) * sum(H .* H);

end