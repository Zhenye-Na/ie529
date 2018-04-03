function [J, grad] = costFunction(theta, X, y)


% Initialize some useful values
m = length(y); % number of training examples


J = 0;
grad = zeros(size(theta));


H = sigmoid((theta') * (X'));
J = (1 / m) * ((-(y')) * (log(H))' - ((ones(m, 1) - y)') * (log(ones(1, m) - H))');
grad = (1 / m) * ((H') - y)' * X;



end
