addpath('src/include');

% TO DO: Test assignment 1 MCM 2024-2025
% 1.1 Angle-axis to rot

% Test values for question 1.1.2
h = [ 1 , 0 , 0]';
theta = deg2rad(90);
R1 = AngleAxisToRot(h, theta);
disp('Rotation Matrix R1:');
disp(R1);

% test value for question 1.1.3
h = [ 0, 0, 1]';
theta = pi / 3;
R2 = AngleAxisToRot(h, theta);
disp('Rotation Matrix R2:');
disp(R2);

% test value for question 1.1.4

rho = [-pi/3, -pi/6, pi/3];
theta = norm(rho);
h = rho./theta;
R3 = AngleAxisToRot(h, theta);
disp('Rotation Matrix R3:');
disp(R3);

% 1.2 Rot to angle-axis

% 1.3 Euler to rot

% 1.4 Rot to Euler
