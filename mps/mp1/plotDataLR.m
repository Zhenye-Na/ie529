function plotDataLR(x, y)

figure; % open a new figure window



load ('Comp1_IE529.mat');
X = lift_kg';   % 62x1 vector
y = putt_m';     % 62x1 vector

m = length(y);
plot(x, y, 'rx', 'MarkerSize', 10); 


end
