clear
clc

global J1 M2 l1l2p l2 l2c B1 B2 Rm Kt Kr g b 
J1 = .0012;
M2 = .127; % kilograms
l1l2p = .2; % meters
l2 = .3; % meters
l2c = .15; % meters (center point)
B1 = .015; 
B2 = .002;
Rm = 2.6;
Kt = 7.68 * 10^(-3);
Kr = 70;
g = 9.8; %m/s^2
b = [1; 0];

t1p = J1 + M2 *(l1l2p)^2;
t2p = (1/3) * M2 * l2^2;
t3p = (1/2) * M2 * (l1l2p) * l2;
t4p = M2 * l2c;
t1 = t1p * Rm / (Kr * Kt);
t2 = t2p * Rm / (Kr * Kt);
t3 = t3p * Rm / (Kr * Kt);
t4 = t4p * Rm / (Kr * Kt);
t5 = (B1 * Rm / (Kr * Kt)) + Kr*Kt;
t6 = B2 * Rm / (Kr * Kt);


