clear all
close all
clc
vrclear
vrclose

load('generated_traj.mat');
control;
sim('control.slx', t);
visualize_results;
SCARA_VR_VISUALIZE(squeeze(q(:,1,:)), false);