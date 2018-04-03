% Load data to OCTAVE
load ('Comp1_IE529.mat');
X = lift_kg';      % 62x1 vector
y = putt_m';      % 62x1 vector


X = [ones(size(X, 1), 1) X X .^ 2 X .^ 3];
Theta = inv(X' * X) * X' * y;
pred = X * Theta;
residual = (pred - y)' * (pred - y)

