function R = AngleAxisToRot(h,theta)

% Identity matrix 3x3
I = eye(3, 3);
% Rodrigues Formula for angle axis to rotation
R = I + sin(theta) * h + (1 - cos(theta)) * h * h;

% Input: 
% h is the axis of rotation
% theta is the angle of rotation (rad)
% Output:
% R rotation matrix

end
