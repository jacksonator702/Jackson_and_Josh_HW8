function resetWorld(optns)
%-------------------------------------------------------------------------- 
% resetWorld()
% Calls Gazebo service to reset the world
% Input: (dict) optns
% Output: None
%-------------------------------------------------------------------------- 
    disp('Resetting the world...');
    
    % TODO: 01 Get robot handle
r = optns{'rHandle'};
    res_client = rossvcclient('/gazebo/reset_world','DataFormat','struct');
    
    % TODO: 02 Create Empty Simulation message
res_req = rosmessage(res_client);
    
    % TODO: 03 Call reset service
call(res_client, res_req);

disp('World is Reset')
end