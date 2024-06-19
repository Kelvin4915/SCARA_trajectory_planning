function j_dot = jacobian_dot(q, q_dot)

% declaring variables
theta1 = q(1);
theta2 = q(2);
theta_d1 = q_dot(1);
theta_d2 = q_dot(2);

% defining the jacobian_dot function
Jacobian_dot = [- (cos(theta1)*theta_d1)/2 - (cos(theta1 + theta2)*theta_d1)/2 - (cos(theta1 + theta2)*theta_d2)/2, -(cos(theta1 + theta2)*(theta_d1 + theta_d2))/2, 0, 0; -(sin(theta1)*theta_d1)/2 - (sin(theta1 + theta2)*theta_d1)/2 - (sin(theta1 + theta2)*theta_d2)/2, -(sin(theta1 + theta2)*(theta_d1 + theta_d2))/2, 0, 0; 0,0, 0, 0];

j_dot = Jacobian_dot*q_dot;
end