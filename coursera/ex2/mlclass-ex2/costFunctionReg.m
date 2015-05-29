function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


temp = 0;
for i=1:m
    h = sigmoid(theta'*X(i,:)');
    temp = temp + (-y(i)*log(h)-(1-y(i))*log(1-h));
end
J = (1/m)*temp;

temp = 0;
for j=2:length(theta)
    temp = temp + theta(j)^2;
end
J = J + ((lambda/(2*m))*temp);

temp = 0;
for i=1:m
    h = sigmoid(theta'*X(i,:)');
    temp = temp + ((h-y(i))*X(i,:)); 
end
grad = (1/m)*temp;

for j=2:length(theta)
    grad(j) = grad(j) + ((lambda/m)*theta(j));
end


% =============================================================

end
