function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

Kp = 120;
Kv = 20;

err = s_des(1) - s(1);
err_d = s_des(2) - s(2);
u = params.mass * (Kv * err_d + Kp * err + params.gravity);


% FILL IN YOUR CODE HERE


end

