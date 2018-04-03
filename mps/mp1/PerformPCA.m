load ('PCA_comp1.mat');                                    
fprintf('\nRunning PCA on example dataset.\n\n');


% first normalize X
[X_norm, mu, sigma] = Normalization(PCA_comp1);

%  Run PCA
[U, S] = pca(X_norm);

disp(U);
disp(S);
proportion = zeros(size(S, 1), 1);
denominator = sum(sum(S));

% compute the proportion of retained variance
for i = 1:size(S, 1)
	I = ones(i, 1);
	numerator = sum(S(1:i, 1:i) * I);
	proportion(i) = numerator / denominator;
end

% display the proportion matrix
% disp(proportion);

Ureduce = U(:,1:2);
Z = X_norm * Ureduce;
scatter(Z(:, 1), Z(:, 2));
