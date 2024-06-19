%main code
clear all;
close all;
clc
Ts=0.001;

trajectory;

figure(1)
plot3(q(:,1),q(:,2),q(:,3));title('3D-trajectory')
figure(2)
subplot(3,1,1); plot(q(:,1));title('X axis Position');
subplot(3,1,2); plot(q(:,2));title('Y axis Position');
subplot(3,1,3); plot(q(:,3));title('Z axis Position');
figure(3)
subplot(3,1,1); plot(v(:,1));title('X axis Velocity');
subplot(3,1,2); plot(v(:,2));title('Y axis Velocity');
subplot(3,1,3); plot(v(:,3));title('Z axis Velocity');
figure(4)
subplot(3,1,1); plot(qddss(:,1));title('X axis Acceleration');
subplot(3,1,2); plot(qddss(:,2));title('Y axis Acceleration');
subplot(3,1,3); plot(qddss(:,3));title('Z axis Acceleration');