% PolynomialRegression
% Regression analysis:

% Load data
load ('Comp1_IE529.mat');
X = lift_kg';   % 62x1 vector
y = putt_m';     % 62x1 vector


p = polyfit(X, y, 2);
pred = polyval(p,X);

residual = [pred - y]' * [pred - y]

t2 = 0:0.1:max(X);
y2 = polyval(p,t2);
plot(X,y,'o',t2,y2)


legend('Training data', 'Linear regression')
