function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly
m = size(z)(1,1);
n = size(z)(1,2); 
g = zeros(size(z));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
for i=1:m
    for j=1:n
        g(i,j) = 1/(1+exp(-z(i,j)));
        %fprintf('%f  ',g(i,j));
    end;
    %fprintf('\n');
end;
% =============================================================
end