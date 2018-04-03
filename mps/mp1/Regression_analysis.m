% Regression_analysis:

% Load data
load ('Comp1_IE529.mat');
X = lift_kg';   % 62x1 vector
y = putt_m';     % 62x1 vector




[beta, sigma, r] = ols (y, [ones(size(X, 1), 1) X]);

residual = r' * r

plotDataLR(X, y);
% Plot the linear fit
hold on; % keep previous plot visible
plot(X, [ones(size(X, 1), 1) X] * beta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure