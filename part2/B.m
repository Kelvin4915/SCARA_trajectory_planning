function By = B(q,y)
t2=q(2);
% syms A1 A2 t1 t2 d3 t4 m1 m2 m3 m4 kr1 kr2 kr3 kr4 Il1 Il2 Il4 Im1 Im2 Im3 Im4 L1 L2 td1 td2 dd3 td4
A1 = 0.5;
A2 = 0.5;
L1 = 0.25;
L2 = 0.25;
kr1 = 1;
kr2 = 1;
kr3 = 50;
kr4 = 20;
m1 = 25;
m2 = 25;
m3 = 10;
m4 = 5;
Il1 = 5;
Il2 = 5;
Il4 = 1;
Il3 = 0;
Im1 = 0.0001;
Im2 = 0.0001;
Im3 = 0.01;
Im4 = 0.005;

%% Position
% JpM1 = [0 0 0 0; 0 0 0 0; 0 0 0 0];
% JpM2 = [-A1*sin(t1) 0 0 0; A1*cos(t1) 0 0 0; 0 0 0 0];
% JpM3 = [-A1*sin(t1)-A2*sin(t1+t2) -A2*sin(t1+t2) 0 0;A1*cos(t1)+A2*cos(t1+t2) A2*cos(t1+t2) 0 0;0 0 0 0];
% JpM4 = [-A1*sin(t1)-A2*sin(t1+t2) -A2*sin(t1+t2) 0 0;A1*cos(t1)+A2*cos(t1+t2) A2*cos(t1+t2) 0 0;0 0 0 0];
% 
% 
% JpL1 = [-L1*sin(t1) 0 0 0;L1*cos(t1) 0 0 0;0 0 0 0];
% JpL2 = [-A1*sin(t1)-L2*sin(t1+t2) -L2*sin(t1+t2) 0 0;A1*cos(t1)+L2*cos(t1+t2) L2*cos(t1+t2) 0 0;0 0 0 0];
% JpL3 = [-A1*sin(t1)-A2*sin(t1+t2) -A2*sin(t1+t2) 0 0;A1*cos(t1)+A2*cos(t1+t2) A2*cos(t1+t2) 0 0;0 0 -1 0];
% JpL4 = [-A1*sin(t1)-A2*sin(t1+t2) -A2*sin(t1+t2) 0 0;A1*cos(t1)+A2*cos(t1+t2) A2*cos(t1+t2) 0 0;0 0 1 0];
% 
%% Orientation
% 
% JoM1 = [0 0 0 0;0 0 0 0;kr1 0 0 0];
% JoM2 = [0 0 0 0;0 0 0 0;1 kr2 0 0];
% JoM3 = [0 0 0 0;0 0 0 0;1 1 -kr3 0];
% JoM4 = [0 0 0 0;0 0 0 0;1 1 0 kr4];
% 
% Jo_L1 = [0 0 0 0;0 0 0 0;1 0 0 0];
% Jo_L2 = [0 0 0 0;0 0 0 0;1 1 0 0];
% Jo_L3 = [0 0 0 0;0 0 0 0;1 1 0 0];
% Jo_L4 = [0 0 0 0;0 0 0 0; 1 1 0 1];
% 
% 
% B1 = m1*transpose(Jp_L1)*Jp_L1 + transpose(Jo_L1)*eye(3)*Il1*eye(3)'*Jo_L1 + transpose(Jo_M1)*eye(3)*Im1*eye(3)'*Jo_M1;
% B2 = m2*transpose(Jp_L2)*Jp_L2 + transpose(Jo_L2)*eye(3)*Il2*eye(3)'*Jo_L2 + transpose(Jo_M2)*eye(3)*Im2*eye(3)'*Jo_M2;
% B3 = m3*transpose(Jp_L3)*Jp_L3 + transpose(Jo_L3)*eye(3)*Il3*eye(3)'*Jo_L3 + transpose(Jo_M3)*eye(3)*Im3*eye(3)'*Jo_M3;
% B4 = m4*transpose(Jp_L4)*Jp_L4 + transpose(Jo_L4)*eye(3)*Il4*eye(3)'*Jo_L4 + transpose(Jo_M4)*eye(3)*Im4*eye(3)'*Jo_M4;
% Bn = B1+B2+B3+B4;
% B= simplify(Bn)

%% B matrix %%
B=[Il1+Il2+Il4+Im2+Im3+Im4+Im1*kr1^2+A1^2*m2+A1^2*m3+A1^2*m4+A2^2*m3+A2^2*m4+L1^2*m1+L2^2*m2+2*A1*A2*m3*cos(t2)+2*A1*A2*m4*cos(t2)+2*A1*L2*m2*cos(t2), Il2+Il4+Im3+Im4+Im2*kr2+A2^2*m3+A2^2*m4+L2^2*m2+A1*A2*m3*cos(t2)+A1*A2*m4*cos(t2)+A1*L2*m2*cos(t2), -Im3*kr3, Il4+Im4*kr4; 
   Il2+Il4+Im3+Im4+Im2*kr2+A2^2*m3+A2^2*m4+L2^2*m2+A1*A2*m3*cos(t2)+A1*A2*m4*cos(t2)+A1*L2*m2*cos(t2), Il2+Il4+Im3+Im4+Im2*kr2^2+A2^2*m3+A2^2*m4+L2^2*m2, -Im3*kr3, Il4 + Im4*kr4;
   -Im3*kr3, -Im3*kr3, Im3*kr3^2+m3+m4, 0;
   Il4+Im4*kr4, Il4+Im4*kr4, 0, Im4*kr4^2+Il4];

%% B*y matrix %%
By = B*y;
