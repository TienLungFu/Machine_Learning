function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
% m = length(y);
m = size(X)(1,1);
n = size(X)(1,2);

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
Sum = 0;
for i=1:m
    Sum = Sum - y(i,1)*log(sigmoid(X(i,:)*theta)) - (1-y(i,1))*log(1-sigmoid(X(i,:)*theta));
end;

for j=1:n
    for i=1:m
        grad(j,1) = grad(j,1) + (sigmoid(X(i,:)*theta)-y(i,1))*X(i,j);
    end; 
end;

J = Sum/m;
grad = (1/m)*grad;
% =============================================================
end





