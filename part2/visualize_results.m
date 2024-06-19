q = ans.q;
ep = ans.tracking_q;
ev = ans.tracking_qd;

tempq1 = q(1,:,:);
q1(:,1) = tempq1(1,1,:);
tempq2 = q(2,:,:);
q2(:,1) = tempq2(1,1,:);
tempq3 = q(3,:,:);
q3(:,1) = tempq3(1,1,:);
tempq4 = q(4,:,:);
q4(:,1) = tempq4(1,1,:);

figure(1)
subplot(5,1,1); plot(t, q1(:,1));title('position Q1')
subplot(5,1,2); plot(t, q2(:,1));title('position Q2')
subplot(5,1,3); plot(t, q3(:,1));title('position Q3')
subplot(5,1,4); plot(t, q4(:,1));title('position Q4')
subplot(5,1,5);

tempq1e = ep(1,:,:);
q1e(:,1) = tempq1e(1,1,:);
tempq2e = ep(2,:,:);
q2e(:,1) = tempq2e(1,1,:);
tempq3e = ep(3,:,:);
q3e(:,1) = tempq3e(1,1,:);
tempq4e = ep(4,:,:);
q4e(:,1) = tempq4e(1,1,:);

figure(2)
subplot(5,1,1); plot(t, q1e(:,1));title('position Q1 Error')
subplot(5,1,2); plot(t, q2e(:,1));title('position Q2 Error')
subplot(5,1,3); plot(t, q3e(:,1));title('position Q3 Error')
subplot(5,1,4); plot(t, q4e(:,1));title('position Q4 Error')
subplot(5,1,5);

tempq1ve = ev(1,:,:);
q1ve(:,1) = tempq1ve(1,1,:);
tempq2ve = ev(2,:,:);
q2ve(:,1) = tempq2ve(1,1,:);
tempq3ve = ev(3,:,:);
q3ve(:,1) = tempq3ve(1,1,:);
tempq4ve = ev(4,:,:);
q4ve(:,1) = tempq4ve(1,1,:);

figure(3)
subplot(5,1,1); plot(t, q1ve(:,1));title('velocity Q1 Error')
subplot(5,1,2); plot(t, q2ve(:,1));title('velocity Q2 Error')
subplot(5,1,3); plot(t, q3ve(:,1));title('velocity Q3 Error')
subplot(5,1,4); plot(t, q4ve(:,1));title('velocity Q4 Error')
subplot(5,1,5);