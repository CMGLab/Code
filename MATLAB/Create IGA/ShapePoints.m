function [Pnew] = ShapePoints(P,n_1,n_2,d)

% ShapePoints
% Written by Christopher Coley and AJ Gemer
% Last modified 15 Oct 14
%
% Reshapes points from our code's format to be compatible with Luke's
% NURBS_Surface_Refine code
%
% Output:
%   Pnew - Array of reshaped points
%
% Input:
%   P - array of points
%   p_1 - polynomial order of the element in the first dimension; scalar
%   p_2 - polynomial order of the element in the second dimension; scalar
%   d - spatial dimensions; scalar

Pnew = zeros(n_1,n_2,d);
for i = 1:d
    Pnew(:,:,i) = reshape(P(i,:)',[n_2,n_1])';
end