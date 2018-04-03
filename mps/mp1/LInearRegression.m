% Load data to OCTAVE
load ('Comp1_IE529.mat');
X = lift_kg';      % 62x1 vector
y = putt_m';       % 62x1 vector

X = [ones(size(X, 1), 1) X];
% initialize fitting parameters
theta = inv(X' * X) * X' * y