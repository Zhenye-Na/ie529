function [U, S] = pca(X)

[m, n] = size(X);

Y = (1/(m - 1)) * X' * X;

[U, S, V] = svd(Y);

end