function [psi, theta, phi] = RotToYPR(R)
    % Given a rotation matrix, the function outputs the relative Euler angles
    % using the convention YPR.
    % Input:
    % R - rotation matrix
    % Output:
    % psi - angle around z-axis (yaw)
    % theta - angle around y-axis (pitch)
    % phi - angle around x-axis (roll)
    
    % Check if R is a valid rotation matrix
    if size(R, 1) ~= 3 || size(R, 2) ~= 3
        error('Input must be a 3x3 matrix.');
    end
    
    % Check for orthogonality
    if norm(R * R' - eye(3)) > 1e-6
        error('Input must be an orthogonal matrix (R * R'' should be the identity matrix).');
    end
    
    % Check for determinant
    if abs(det(R) - 1) > 1e-6
        error('Input must be a proper rotation matrix (det(R) should be 1).');
    end
    
    % Calculate the angles
    theta = -asin(R(1, 3)); % Pitch (Y-axis)
    
    if cos(theta) > 1e-6 % Check for singularity
        psi = atan2(R(2, 3) / cos(theta), R(3, 3) / cos(theta)); % Yaw (Z-axis)
        phi = atan2(R(1, 2) / cos(theta), R(1, 1) / cos(theta)); % Roll (X-axis)
    else
        psi = 0; % Indeterminate yaw; can be set to any value
        phi = atan2(R(2, 1), R(2, 2)); % Roll is now determined
    end
end
