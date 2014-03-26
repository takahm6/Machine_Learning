function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
 m = length(X);
% n = columns(X_norm);
mu = mean(X);


%sigma(1,1) = std(X(: ,1));
%sigma(1,2) = std(X(: ,2));

% Subtract mean from each feature
for i = 1:m
	tmp(i, :) = X(i, :) .- mu;
end

% Divide each feature by the standard deviation
sigma = std(tmp);

for j =1:m
	X_norm(j, :) = tmp(j, :) ./sigma;
end

%for i = 1:m
%	for j = 1:n
% 		X_norm(i,n) = (X_norm(i,n) - mu(i,n))/sigma(i,n);
% 	end
%end


% ============================================================

end
