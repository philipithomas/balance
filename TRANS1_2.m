function [ T1_2 ] = TRANS1_2( theta2,  point )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes herepoint0
%Theta1 is in radians
matrix = [cos(theta2) -sin(theta2) 0 0; 
          0 0 -1 8; 
          sin(theta2) cos(theta2) 0 0; 
          0 0 0 1];

T1_2 = matrix*point;
end
