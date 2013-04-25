% Generate the x, y, and z data for the sphere
% r = 14.4 * ones(50, 50); % radius is 5
% [th, phi] = meshgrid(linspace(0, 2*pi, 50), linspace(-pi, pi, 50));
% [x,y,z] = sph2cart(th, phi, r);
% 
% surface(x,y,z,'FaceColor', 'none')

% r = 24.04;
% [x,y,z] = sphere(50)
% x0 = 16.5; y0 = 14.85; z0 = 9.15;
% x = x*r + x0;
% y = y*r + y0;
% z = z*r + z0;
% 
% figure
% lightGrey = 0.8*[1 1 1]; % It looks better if the lines are lighter
% surface(x,y,z,'FaceColor', 'none','EdgeColor',lightGrey)
% hold on
% 
% r = 15;
% theta = (0:.2:6)/3*pi;
% x = r*cos(theta) + x0;
% y = r*sin(theta) + y0;
% z = z0*ones(size(x));
% plot3(x,y,z)
% I = 1:5:26;
% h = plot3(x(I),y(I),z(I),'o','MarkerFaceColor','b','MarkerSize',24);
% 
% axis equal % so the sphere isn't distorted
% view([1 1 0.75]) % adjust the viewing angle
% zoom(2)

%My try
r = 14.42;
phi_start = atan(1/3);
theta=linspace(0,2*pi,50);
phi=linspace(phi_start,pi-phi_start,50);
[theta,phi]=meshgrid(theta,phi);
x=r*sin(phi).*cos(theta);
y=r*sin(phi).*sin(theta);
z=r*cos(phi);
mesh(x,y,z,'FaceColor', 'none')
axis equal
grid on
box on



