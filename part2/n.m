function n = n(qd, q)
t2=q(2);
td1=qd(1);
td2=qd(2);
Fm1=0.0001;
Fm2=0.0001;
Fm3=0.01;
Fm4=0.005;
kr1 = 1;
kr2 = 1;
kr3 = 50;
kr4 = 20;
m1 = 25;
m2 = 25;
m3 = 10;
m4 = 5;
% q=[t1 t2 d3 t4];
% qd=[td1 td2 dd3 td4];
% syms('C',[4 4 4]);
% syms("cf",[4 4]);
% for i=1:4
%     for j=1:4
%         for k=1:4
%             Cs(i,j,k)=0.5*diff(B(i,j),q(k))+0.5*(diff(B(i,k),q(j))-diff(B(j,k),q(i)));
%         end
%         
%     end
% end
% for x=1:4
%     for y=1:4
%         Cf(x,y)=C(x,y,1)*qd(1)+C(x,y,2)*qd(2)+C(x,y,3)*qd(3)+C(x,y,4)*qd(4);
%     end
% end 
% C=simplify(Cf)

%% C Matrix %%
C=[-(55*td2*sin(t2))/8, -(55*sin(t2)*(td1 + td2))/8, 0, 0;
    (55*td1*sin(t2))/8,                           0, 0, 0;
                     0,                           0, 0, 0;
                     0,                           0, 0, 0];

%% G matrix %%
G=[0;0;-(m3+m4)*9.8;0];

%% F matrix %%
F=diag([kr1^2*Fm1 kr2^2*Fm2 kr3^3*Fm3 kr4^2*Fm4]);

%% N matrix %%
n = C*qd+F*q+G;
