function R = AngleAxisToRot(h, theta)
    % The function implements the Rodrigues Formula
    % Input: 
    % h is the axis of rotation (3x1 vector)
    % theta is the angle of rotation (radians)
    % Output:
    % R rotation matrix (3x3)

    % Normalize the rotation axis
    h = h / norm(h);

    % Skew-symmetric matrix
    K = [0, -h(3), h(2);
         h(3), 0, -h(1);
         -h(2), h(1), 0];

    % Create identity matrix
    I = eye(3);

    % Rodrigues' rotation formula
    R = I + sin(theta) * K + (1 - cos(theta)) * (K * K);
end
