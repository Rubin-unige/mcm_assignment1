addpath('src\include\'); 
%% 1.1 Angle-axis to Rotation Matrix
% Test Case 1
axis1 = [1; 0; 0]; % Rotation axis (unit vector along x-axis)
angle1 = pi / 2; % 90 degrees in radians
R1 = AngleAxisToRot(axis1, angle1);
disp('Test Case 1: R1 =');
disp(R1);

% Test Case 2
axis2 = [0; 0; 1]; % Rotation axis (unit vector along z-axis)
angle2 = pi / 3; % 60 degrees in radians
R2 = AngleAxisToRot(axis2, angle2);
disp('Test Case 2: R2 =');
disp(R2);

% Test Case 3
rho = [-pi/3; -pi/6; pi/3]; % Angle-axis representation
theta = norm(rho); % Calculate the angle of rotation
h = rho / theta; % Normalize to get the axis of rotation
R3 = AngleAxisToRot(h, theta); % Calculate the rotation matrix
disp('Test Case 3: R3 =');
disp(R3);

%% 1.2 Rotation Matrix to Angle-axis
% Test Case 1
R21 = [1, 0, 0; 0, 0, -1; 0, 1, 0]; 
[axis1, angle1] = RotToAngleAxis(R21);
disp('Test Case 1:');
disp('Rotation axis (h1) =');
disp(axis1);
disp('Angle (theta1) =');
disp(angle1);

% Test Case 2
R22 = [0.5, -sqrt(3)/2, 0; sqrt(3)/2, 0.5, 0; 0, 0, 1];
[axis2, angle2] = RotToAngleAxis(R22);
disp('Test Case 2:');
disp('Rotation axis (h2) =');
disp(axis2);
disp('Angle (theta2) =');
disp(angle2);

% Test Case 3
R23 = [1, 0, 0; 0, 1, 0; 0, 0, 1]; 
[axis3, angle3] = RotToAngleAxis(R23);
disp('Test Case 3:');
disp('Rotation axis (h3) =');
disp(axis3);
disp('Angle (theta3) =');
disp(angle3);

% Test Case 4
R4 = [-1, 0, 0; 0, -1, 0; 0, 0, 1];
[axis4, angle4] = RotToAngleAxis(R4);
disp('Test Case 4:');
disp('Rotation axis (h4) =');
disp(axis4);
disp('Angle (theta4) =');
disp(angle4);

%% 1.3 Euler Angles to Rotation Matrix
% Test Case 1
psi1 = 0; theta1 = 0; phi1 = pi/2;
R1 = YPRToRot(psi1, theta1, phi1);
disp('Test Case 1: R1 =');
disp(R1);

% Test Case 2
psi2 = deg2rad(60); % Convert degrees to radians
theta2 = 0; phi2 = 0;
R2 = YPRToRot(psi2, theta2, phi2);
disp('Test Case 2: R2 =');
disp(R2);

% Test Case 3
psi3 = pi/3; theta3 = pi/2; phi3 = pi/4;
R3 = YPRToRot(psi3, theta3, phi3);
disp('Test Case 3: R3 =');
disp(R3);

% Test Case 4
psi4 = 0; theta4 = pi/2; phi4 = -pi/12;
R4 = YPRToRot(psi4, theta4, phi4);
disp('Test Case 4: R4 =');
disp(R4);

%% 1.4 Rotation Matrix to Euler Angles
% Test Case 1
R41 = [1, 0, 0; 0, 0, -1; 0, 1, 0];
[psi1, theta1, phi1] = RotToYPR(R41);
disp('Test Case 1:');
disp(['psi = ', num2str(psi1), ', theta = ', num2str(theta1), ', phi = ', num2str(phi1)]);

% Test Case 2
R42 = [1/2, -sqrt(3)/2, 0; sqrt(3)/2, 1/2, 0; 0, 0, 1];
[psi2, theta2, phi2] = RotToYPR(R42);
disp('Test Case 2:');
disp(['psi = ', num2str(psi2), ', theta = ', num2str(theta2), ', phi = ', num2str(phi2)]);

% Test Case 3
R43 = [0, -sqrt(2)/2, sqrt(2)/2; 0.5, sqrt(6)/4, sqrt(6)/4; -sqrt(3)/2, sqrt(2)/4, sqrt(2)/4];
disp(R43);
[psi3, theta3, phi3] = RotToYPR(R43);
disp('Test Case 3:');
disp(['psi = ', num2str(psi3), ', theta = ', num2str(theta3), ', phi = ', num2str(phi3)]);
 