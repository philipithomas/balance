function [ state ] = SwingUp( X )
%SWINGUP Summary of this function goes here
%   Detailed explanation goes here

q2 = X(3);
q2d = X(4);

% t1 = .0772;
% t2 = .0257;
% t3 = .0266;
% t4 = .1126;
% t5 = .5466;
% t6 = .0084;

error = pi/8;
errord = 1;

% swing = 0, balance = 1, wait = 2

if (abs(q2-pi) < error) && (q2d < errord)
    state = 0; % swing
elseif (abs(q2) < error)
    state = 1; % balance
elseif (abs(q2) > error) ||  ((abs(q2-pi)>error)||(abs (q2d)>errord))
    state = 2; %wait
else
   state = 0; % swing
end


end

