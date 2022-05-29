function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


x_sum = zeros(size(centroids, 1));
y_sum = zeros(size(centroids, 1));
counter = zeros(size(centroids, 1));
for i = 1:size(idx, 1),
	position = idx(i);
	counter(position) = counter(position) + 1;
	x_sum(position) = x_sum(position) + X(i, 1);
	y_sum(position) = y_sum(position) + X(i, 2);
end
for i = 1:size(centroids, 1),
	centroids(i, 1) = x_sum(i) / counter(i);
	centroids(i, 2) = y_sum(i) / counter(i);
end

% =============================================================


end

