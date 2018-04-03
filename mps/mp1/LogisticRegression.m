% LogisticRegression

% Load data
load ('Comp1_IE529.mat');
X = lift_kg';   % 62x1 vector
y = putt_m';     % 62x1 vector

B = mnrfit(X,y)
