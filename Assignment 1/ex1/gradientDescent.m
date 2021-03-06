function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

% First, calculate X * theta - y, get m * 1 matrix
A = (X * theta - y)' * X;

% Then multiply the transpose of that by X, the result is 1 * 2 matrix
%This does not seem to work
%B = A' * X;
%theta_zero = theta - (-
% Calculate theta_zero
%sum(A .*

% Multiply B by -alpha*(1/m)
B = alpha*(1/m)*A;

% Transpose C, subtract that from the current theta to calculate new theta values
theta = theta - B';


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
