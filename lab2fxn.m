function [ Xd ] = lab2fxn(X)
v = X(1); 
q1 = X(2);
q1d = X(3);
q2 = X(4);
q2d = X(5); 
 
%Lab2fxn Summary of this function goes here
%   Detailed explanation goes here
J1 = .0012;
M2 = .127; % kilograms
p = .2; % meters
l2 = .3; % meters
l2c = .15; % meters (center point)
B1 = .015; 
B2 = .002;
Rm = 2.6;
Kt = 7.68 * 10^(-3);
Kr = 70;
g = 9.8; %m/s^2

t1p = J1 + M2 *(p)^2;
t2p = (1/3) * M2 * l2^2;
t3p = (1/2) * M2 * (p) * l2;
t4p = M2 * l2c;
% Calculated Values
% t1 = t1p * Rm / (Kr * Kt);
% t2 = t2p * Rm / (Kr * Kt);
% t3 = t3p * Rm / (Kr * Kt);
% t4 = t4p * Rm / (Kr * Kt);
% t5 = (B1 * Rm / (Kr * Kt)) + Kr*Kt;
% t6 = B2 * Rm / (Kr * Kt);
b = [1; 0];

%Experimental Values
t1 = .0772;
t2 = .0257;
t3 = .0266;
t4 = .1126;
t5 = .5466;
t6 = .0084;

M = [(t1 + t2*sin(q2)^2), (t3*cos(q2));  (t3*cos(q2)), t2];
C = [(2*t2*sin(q2)*cos(q2)*q2d), (-t3*sin(q2)*q2d); (-t2*sin(q2)*cos(q2)*q1d), 0];
F = [(t5*q1d) ; (t6*q2d)];
G = [0; (-t4*g*sin(q2))];
invM = inv(M);

Qdd = -invM*(C*([q1d; q2d]) + F + G) + (invM * b * v);

% We build the x dot matrix becuase the whole matrix is used later, then we
% extract Qdd again using the selector in simulink

Xd = [q1d; Qdd(1); q2d; Qdd(2)];
end

