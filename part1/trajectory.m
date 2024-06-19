% setting up constants
Tsample = 0.001;
Ta=0.2;
P = [0 -0.8 0;0 -0.8 0.5;0.5 -0.6 0.5;0.8 0 0.5;0.8 0 0];
T = [0;0.6;2.0;3.4;4];

% first section %
Tf1=T(2)-T(1);
qdd1=(4*(P(2,:)-P(1,:)))/((Tf1)^2);
qdd1=qdd1*1.333;
Tc1=Tf1/2 - 0.5*sqrt(((Tf1^2)*norm(qdd1)-4*norm(P(2,:)-P(1,:)))/norm(qdd1));

% first segment of the first section
a=[];
qdds=[];
for i=0.00:Tsample:Tf1-Ta
    if (i>=0 && i<=Tc1)
        a(end+1,:)=P(1,:)+0.5*(qdd1*((i)^2));
        qdds(end+1,:)=qdd1;
    elseif (i>=Tc1 && i<=Tf1-Tc1)
        a(end+1,:)=P(1,:)+qdd1*Tc1*((i-Tc1)/2);
        qdds(end+1,:)=0;
    elseif (i>=Tf1-Tc1 && i<=Tf1)
        a(end+1,:)=P(2,:)-0.5*qdd1*((Tf1-i)^2);
        qdds(end+1,:)=-qdd1;
    end
end

% second segment of the first section
b=[];
for i=Tf1-Ta+Tsample:Tsample:Tf1
    if (i>=0 && i<=Tc1)
        b(end+1,:)=P(1,:)+0.5*(qdd1*((i)^2));
        qdds(end+1,:)=qdd1;
    elseif (i>=Tc1 && i<=Tf1-Tc1)
        b(end+1,:)=P(1,:)+qdd1*Tc1*((i-Tc1)/2);
        qdds(end+1,:)=0;
    elseif (i>=Tf1-Tc1 && i<=Tf1)
        b(end+1,:)=P(2,:)-0.5*qdd1*((Tf1-i)^2);
        qdds(end+1,:)=-qdd1;
    end
end

% second section %
Tf2=T(3)-T(2);
qdd2=(4*(P(3,:)-P(2,:)))/(Tf2^2);
qdd2=qdd2*1.333;
Tc2=Tf2/2 - 0.5*sqrt(((Tf2^2)*norm(qdd2)-4*norm(P(3,:)-P(2,:)))/norm(qdd2));

% first segment of the second section
c=[];
for i=0+Tsample:Tsample:Ta
    if (i>=0 && i<=Tc2)
        c(end+1,:)=P(2,:)+0.5*(qdd2*((i)^2));
        qdds(end+1,:)=qdd2;
    elseif (i>Tc2 && i<=Tf2-Tc2)
        c(end+1,:)=P(2,:)+qdd2*Tc2*(i-Tc2/2);
        qdds(end+1,:)=0;
    elseif (i>Tf2-Tc2 && i<=Tf2)
        c(end+1,:)=P(3,:)-0.5*qdd2*((Tf2-i)^2);
        qdds(end+1,:)=-qdd2;
    end
end

% second segment of the second section
d=[];
for i=Ta+Tsample:Tsample:Tf2-Ta
    if (i>=0 && i<=Tc2)
        d(end+1,:)=P(2,:)+0.5*(qdd2*((i)^2));
        qdds(end+1,:)=qdd2;
    elseif (i>Tc2 && i<=Tf2-Tc2)
        d(end+1,:)=P(2,:)+qdd2*Tc2*(i-Tc2/2);
        qdds(end+1,:)=0;
    elseif (i>Tf2-Tc2 && i<=Tf2)
        d(end+1,:)=P(3,:)-0.5*qdd2*((Tf2-i)^2);
        qdds(end+1,:)=-qdd2;
    end
end

% third segment of the second section
e=[];
for i=Tf2-Ta+Tsample:Tsample:Tf2
    if (i>=0 && i<=Tc2)
        e(end+1,:)=P(2,:)+0.5*(qdd2*((i)^2));
        qdds(end+1,:)=qdd2;
    elseif (i>Tc2 && i<=Tf2-Tc2)
        e(end+1,:)=P(2,:)+qdd2*Tc2*(i-Tc2/2);
        qdds(end+1,:)=0;
    elseif (i>Tf2-Tc2 && i<=Tf2)
        e(end+1,:)=P(3,:)-0.5*qdd2*((Tf2-i)^2);
        qdds(end+1,:)=-qdd2;
    end
end

% third section %
Tf3=T(4)-T(3);
qdd3=(4*(P(4,:)-P(3,:)))/(Tf3^2);
qdd3=qdd3*1.333;
Tc3=Tf3/2 - 0.5*sqrt(((Tf3^2)*norm(qdd3)-4*norm(P(4,:)-P(3,:)))/norm(qdd3));

% first segment of the third section
f=[];
for i=0+Tsample:Tsample:Ta
    if (i>=0 && i<=Tc3)
        f(end+1,:)=P(3,:)+0.5*(qdd3*((i)^2));
        qdds(end+1,:)=qdd3;
    elseif (i>Tc3 && i<=Tf3-Tc3)
        f(end+1,:)=P(3,:)+qdd3*Tc3*(i-Tc3/2);
        qdds(end+1,:)=0;
    elseif (i>Tf3-Tc3 && i<=Tf3)
        f(end+1,:)=P(4,:)-0.5*qdd3*((Tf3-i)^2);
        qdds(end+1,:)=-qdd3;
    end
end

% second segment of the third section
g=[];
for i=Ta+Tsample:Tsample:Tf3-Ta
    if (i>=0 && i<=Tc3)
        g(end+1,:)=P(3,:)+0.5*(qdd3*((i)^2));
        qdds(end+1,:)=qdd3;
    elseif (i>Tc3 && i<=Tf3-Tc3)
        g(end+1,:)=P(3,:)+qdd3*Tc3*(i-Tc3/2);
        qdds(end+1,:)=0;
    elseif (i>Tf3-Tc3 && i<=Tf3)
        g(end+1,:)=P(4,:)-0.5*qdd3*((Tf3-i)^2);
        qdds(end+1,:)=-qdd3;
    end
end

% third segment of the third section
h=[];
for i=Tf3-Ta+Tsample:Tsample:Tf3
    if (i>=0 && i<=Tc3)
        h(end+1,:)=P(3,:)+0.5*(qdd3*((i)^2));
        qdds(end+1,:)=qdd3;
    elseif (i>Tc3 && i<=Tf3-Tc3)
        h(end+1,:)=P(3,:)+qdd3*Tc3*(i-Tc3/2);
        qdds(end+1,:)=0;
    elseif (i>Tf3-Tc3 && i<=Tf3)
        h(end+1,:)=P(4,:)-0.5*qdd3*((Tf3-i)^2);
        qdds(end+1,:)=-qdd3;
    end
end

% fourth section %
Tf4=T(5)-T(4);
qdd4=(4*(P(5,:)-P(4,:)))/(Tf4^2);
qdd4=qdd4*1.333;
Tc4=Tf4/2 - 0.5*sqrt(((Tf4^2)*norm(qdd4)-4*norm(P(5,:)-P(4,:)))/norm(qdd4));

% first segment of the fourth section
k=[];
for i=0+Tsample:Tsample:Ta
    if (i>=0 && i<=Tc4)
        k(end+1,:)=P(4,:)+0.5*(qdd4*((i)^2));
        qdds(end+1,:)=qdd4;
    elseif (i>Tc4 && i<=Tf4-Tc4)
        k(end+1,:)=P(4,:)+qdd4*Tc4*(i-Tc4/2);
        qdds(end+1,:)=0;
    elseif (i>Tf4-Tc4 && i<=Tf4)
        k(end+1,:)=P(5,:)-0.5*qdd4*((Tf4-i)^2);
        qdds(end+1,:)=-qdd4;
    end
end

% second segment of the fourth section
j=[];
for i=Ta+Tsample:Tsample:Tf4
    if (i>=0 && i<=Tc4)
        j(end+1,:)=P(4,:)+0.5*(qdd4*((i)^2));
        qdds(end+1,:)=qdd4;
    elseif (i>Tc4 && i<=Tf4-Tc4)
        j(end+1,:)=P(4,:)+qdd4*Tc4*(i-Tc4/2);
        qdds(end+1,:)=0;
    elseif (i>Tf4-Tc4 && i<=Tf4)
        j(end+1,:)=P(5,:)-0.5*qdd4*((Tf4-i)^2);
        qdds(end+1,:)=-qdd4;
    end
end

% merging results to obtain curve %
x=(b+c)/2;
y=(e+f)/2;
z=(h+k)/2;

qddse=[];
for i=1:1:600
    ea(i,:)=[0.8 0 0];
    qddse(i,:)=[0 0 0];
end
q=[a;x;d;y;g;z;j;ea];

%% calculating velocity %%
v=[];
v(1,:)=[0 0 0];
qdda=qdds(402:601,:)+qdds(602:801,:);
qddb=qdds(1802:2001,:)+qdds(2002:2201,:);
qddc=qdds(3202:3401,:)+qdds(3402:3601,:);
qddss=[qdds(1:401,:);qdda;qdds(802:1801,:);qddb;qdds(2202:3201,:);qddc;qdds(3602:4001,:);qddse];

for i=2:1:4001
    v(i,:)= v(i-1,:)+qddss(i,:)*Tsample;
end

tt=linspace(0.00,4,4001);
t=tt';
q0=[-0.927293431584587;-1.287005790420619;0.700000000000000;2.214299222005206];
pd=q;
pd_dot=v;
pd_dot_dot=qddss;
% save('generated_traj.mat',"q","v","qddss");
Tc=0.001;
theta_d=zeros(4001,1);
theta_d_dot=zeros(4001,1);
theta_d_dot_dot=zeros(4001,1);


save('generated_traj.mat', "pd", "pd_dot", "pd_dot_dot", "q0", "t", "theta_d", "theta_d_dot", "theta_d_dot_dot","Tc")


% plotting outputs %
% figure(1)
% subplot(4,1,1); plot(t,q);title("Trajectory")
% subplot(4,1,2); plot(t,v);title("velocity")
% subplot(4,1,3); plot(t,qddss);title("acceleration")
% subplot(4,1,4); plot3(q(:,1),q(:,2),q(:,3));title("3D trajectory")




