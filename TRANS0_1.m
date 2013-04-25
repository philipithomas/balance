function [ T0_1 ] = TRANS0_1( theta1,  point )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes herepoint0
%Theta1 is in radians
matrix = [cos(theta1) -sin(theta1) 0 0; 
            sin(theta1) cos(theta1) 0 0; 
            0 0 1 0; 
            0 0 0 1];

T0_1 = matrix*point;
end

