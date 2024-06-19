function dk = direct_kin(q)

%assigning the input to joint variables
theta1 = q(1);
theta2 = q(2);
d3 = q(3);
theta4 = q(4);

%given link lengths
a1 = 0.5;
a2 = 0.5;

% homogeneous matrix from base frame to zeroth frame
HB0 = [1 0 0 0;0 1 0 0;0 0 1 1;0 0 0 1];
% homogeneous matrix from zeroth frame to first frame
H01 = [cos(theta1) -sin(theta1) 0 a1*cos(theta1);sin(theta1) cos(theta1) 0 a1*sin(theta1);0 0 1 0;0 0 0 1];
% homogeneous matrix from first frame to second frame
H12 = [cos(theta2) -sin(theta2) 0 a2*cos(theta2);sin(theta2) cos(theta2) 0 a2*sin(theta2);0 0 1 0;0 0 0 1];
% homogeneous matrix from second frame to third frame
H23 = [1 0 0 0;0 1 0 0;0 0 1 -d3;0 0 0 1];
% homogeneous matrix from third frame to fourth frame
H34 = [cos(theta4) -sin(theta4) 0 0;sin(theta4) cos(theta4) 0 0;0 0 1 0;0 0 0 1];
% homogeneous matrix from base frame to first frame
HB1 = HB0 * H01;
% homogeneous matrix from base frame to second frame
HB2 = HB1 * H12;
% homogeneous matrix from base frame to third frame
HB3 = HB2 * H23;
% homogeneous matrix from base frame to fourth frame
HB4 = (HB3 * H34);

% extracting position and theeta from homogeneous matrix
posx = HB4(1,4);
posy = HB4(2,4);
posz = HB4(3,4);
angleSum = theta1+theta2+theta4;


dk = [posx;posy;posz;angleSum];
end