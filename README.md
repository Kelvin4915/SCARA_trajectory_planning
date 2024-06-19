# SCARA Trajectory Planning Project

This project aims to enhance understanding of path planning and motion control for robotic systems. The focus is on developing and visualizing a motion planning algorithm using a trapezoidal velocity profile and an inverse dynamic control approach.

## Objectives

1. Visualize a motion planning algorithm employing a trapezoidal velocity profile.
2. Implement an inverse dynamic control approach to move the robot's end effector along a desired trajectory.
3. Utilize a Simulink model to realize the motion planning algorithm.
4. Ensure the gain selection converges the error function to zero without overshooting or undershooting the desired values.

## Tasks

### Task 1: Trajectory Generation

**Objective:** Create a trajectory passing through specific points at defined time intervals.

**Method:** Implement a trapezoidal velocity profile to generate the trajectory. Ensure the velocity of the end effector is not zero at specified points by using an anticipated time concept.

**Outputs:**
- Trajectory plots at every specific time step.
- Velocity and acceleration profiles.

### Task 2: Inverse Dynamic Control

**Objective:** Use the generated trajectories to control the end effector carrying a 5 kg load along the desired path.

**Method:** Apply second-order inverse kinematic algorithms and an inverse dynamic control approach.

**Implementation:** Develop a Simulink model to simulate the required algorithms.

**Outputs:**
- Joint variable values.
- End effector position and velocity error plots.

## Conclusion

The project successfully created and visualized the desired trajectory using a trapezoidal velocity profile. It then utilized this trajectory to move a 5 kg load at the end effector through an inverse dynamic control approach with a second-order inversion kinematic algorithm. The Simulink model effectively simulated the motion planning algorithm, ensuring precise control of the robot's end effector.
