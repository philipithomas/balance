%% initialize
clear
clf
clc
hold off;
grid on;
%% Configure display of plot
title('Robot of Doom')
xlabel('x')
ylabel('y');
zlabel('z');
axis([-15 15 -15 15 -15 15])
%Base

m0 = [
    [0,0,0,0,0,0,]; 
    [0,0,0,6,6,8,];  
    [-4,0,-1,-1,0,0];
    [1,1,1,1,1,1];

];

% plot3(m0(1,1:2),m0(2,1:2), m0(3,1:2),'-r');
% 
% %% First graph
% plot3(m0(1,2:6), m0(2,2:6), m0(3,2:6));
% 
% for i= 2:6
%     plot3(m0(1,i),m0(2,i),  m0(3,i),'o');
% end

% %% Generate second matrix
% for v = 0: 1000
%     theta1= (pi/100) *v; 
%     m1=zeros(size(m0)); % first generate a blank matrix of dimensions of m0
%     for i=1:6
%     % iterate through "points" of m0 and put them in %m1
%     m1(:,i)=TRANS0_1( theta1, m0(:,i));
%     end
% 
%     % Reset graph
%     grid on
%     % %% Configure display of plot
%     % title('Robot of Doom')
%     % xlabel('x')
%     % ylabel('y');
%     % zlabel('z');
%    
% 
%     % Plot new one
%     %plot3(m1(1,1:2),m1(2,1:2), m1(3,1:2),'-r');
% 
%     plot3(m1(1,2:6), m1(2,2:6), m1(3,2:6));
%  axis([-10 10 -10 10 -10 10])
%     %for i= 2:6
%     %    plot3(m1(1,i),m1(2,i),  m1(3,i),'o');
%    % end
%     drawnow
%     %pause(.1)
% end
%% Frame 2
m2 = [[0,0];
    [0,12];
    [0,0];
    [1,1];
    ];
%% Generate second matrix
for v = 0: 1000
    theta1= (pi/100) *v; 
    theta2= (pi/50) *v; 
    m3=zeros(size(m2)); % first generate a blank matrix of dimensions of m0
    m4=zeros(size(m3));
    for i=1:2
    % iterate through "points" of m0 and put them in %m1
    m3(:,i)=TRANS1_2( theta2, m2(:,i));
    m4(:,i)=TRANS0_1( theta1, m3(:,i));
    end

    m1=zeros(size(m0)); % first generate a blank matrix of dimensions of m0
    for i=1:6
    % iterate through "points" of m0 and put them in %m1
        m1(:,i)=TRANS0_1( theta1, m0(:,i));
    end
    % Reset graph
    grid on;
    % %% Configure display of plot
    % title('Robot of Doom')
    % xlabel('x')
    % ylabel('y');
    % zlabel('z');
   

    % Plot new one
    %plot3(m1(1,1:2),m1(2,1:2), m1(3,1:2),'-r');
    
    plot3(m1(1,2:6), m1(2,2:6), m1(3,2:6));
   grid on;
    hold on;
    plot3(m4(1,1:2), m4(2,1:2), m4(3,1:2));
 axis([-15 15 -15 15 -15 15])
 
 %%Draw Sphere for work envelope
r = 14.42;
phi_start = atan(2/3);
theta=linspace(0,2*pi,50);
phi=linspace(phi_start,pi-phi_start,50);
[theta,phi]=meshgrid(theta,phi);
x=r*sin(phi).*cos(theta);
y=r*sin(phi).*sin(theta);
z=r*cos(phi);
mesh(x,y,z,'FaceColor', 'none')
 
 drawnow   
    hold off;

    

    %for i= 2:6
    %    plot3(m1(1,i),m1(2,i),  m1(3,i),'o');
   % end
    %drawnow   ;
end