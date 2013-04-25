%Animation
M = [(t1 + t2*sin(q2)^2), (t3*cos(q2));  (t3*cos(q2)), t2];
C = [(2*t2*sin(q2)*cos(q2)*q2d), (-t3*sin(q2)*q2d); (-t2*sin(q2)*cos(q2)*q1d), 0];
F = [(t5*q1d) ; (t6*q2d)];
G = [0; (t4*g*sin(q2))];

v1 = M(1,:)*[q1dd; q2dd] + C(1,:) * [q1d; q2d] + F(1) + G(1);
v2 = M(2,:)*[q1dd; q2dd] + C(2,:) * [q1d; q2d] + F(2) + G(2);
V = [v1; v2];