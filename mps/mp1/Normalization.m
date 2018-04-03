function [X_norm, mu, sigma] = Normalization(X)

% compute the column mean
mu = mean(X);
% subtract column mean from oringinal matrix
X_norm = bsxfun(@minus, X, mu);

% compute sigma 
sigma = std(X_norm);
% divide the normalized matrix by sigma
X_norm = bsxfun(@rdivide, X_norm, sigma);

end