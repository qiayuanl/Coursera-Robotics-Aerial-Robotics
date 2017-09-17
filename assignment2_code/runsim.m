clear;
close all;

addpath('utils');
addpath('trajectories');

controlhandle = @controller;

% Choose which trajectory you want to test with
% trajhandle = @traj_step;
% trajhandle = @traj_line;
% trajhandle = @traj_diamond;
 trajhandle = @traj_sine;

[t, state] = simulation_2d(controlhandle, trajhandle);
