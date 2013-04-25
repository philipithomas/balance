function [ theta ] = Hamiltonian( X )
%HAMILTONIAN Determines the system parameters using Lagrangian Mechanics
%   The System is a two axis robot that we simulated in a separate function
%   and then this will be applied to data from the actual system.  Input is
%   a Matrix with 5000 data points (rows) for good results and columns are
%   specified below in parsing. All units are in mks unless otherwise
%   specified.  Output is six system parameters (thetas).  

t = X( : , 1 ); % time in seconds
v = X( : , 2 ) ; % Voltage
q1 = X( : , 3 ); % first axis position (Not used in function)
q1d = X( : , 4 ); % first axis velocity 
q2 = X( : , 5 ); % second axis position
q2d = X( : , 6 ); % second axis velocity
g = 9.8; % acceleration due to gravity

[m n] = size(X); % Find number of data points

for i = 2:m % We iterate through data points
    % Note: Start at i=2 so that the trapz function has a preceding point
    % to generate an integral
    
    
    h1 = 0.5 * ( q1d(i)^2 - q1d(1)^2 );
    h2 = .5*(sin(q2(i))^2*q1d(i)^2+q2d(i)^2)-(.5*(sin(q2(1))^2*q1d(1)^2+q2d(1)^2)) ;
    h3 = cos( q2( i ) ) * q1d( i ) * q2d( i ) - ( cos( q2(1))*q1d(1)*q2d(1));
    h4 =  g * cos( q2( i ) ) - g * cos( q2( 1 ) );
    H(i,:) = [ h1 h2 h3 h4 ]; %m1gz doesn't matter because a difference
    F(i,:) = [ trapz( t( 1:i ) , q1d( 1:i ).^2 ) , trapz( t( 1:i ) , q2d(1:i).^2  )];
    A(i,:) = [H(i,:) F(i,:)];
    d(i,:) = [ trapz( t( 1:i ) , v(1:i).*q1d( 1:i )) ];
    
end

theta = inv(A'*A) * A' *d; %  inv function is slow; may update with pseudoinverse
% Theta is a six-row column vector


end

