% Define constants
g = 9.81; % Acceleration due to gravity in m/s^2

% Get user inputs
initial_velocity = input('Enter the initial velocity (m/s): ');
launch_angle_deg = input('Enter the launch angle (degrees): ');

% Convert launch angle to radians
launch_angle = deg2rad(launch_angle_deg);

% Calculate initial velocity components
v_x = initial_velocity * cos(launch_angle); % Horizontal component of velocity
v_y = initial_velocity * sin(launch_angle); % Vertical component of velocity

% Calculate time of flight, maximum height, and range
time_of_flight = (2 * v_y) / g; % Total time projectile is in air
max_height = (v_y^2) / (2 * g); % Maximum height reached by projectile
range = v_x * time_of_flight; % Horizontal range of projectile

% Time vector for plotting
t = linspace(0, time_of_flight, 100); % 100 points from 0 to time_of_flight

% Calculate trajectory
x = v_x * t; % x position at time t
y = v_y * t - (0.5 * g * t.^2); % y position at time t

% Plot trajectory
figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;

% Plot max height and range points
plot(range, 0, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Range point
plot(range/2, max_height, 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g'); % Max height point

% Add labels and title
xlabel('Horizontal Distance (m)');
ylabel('Vertical Distance (m)');
title(['Projectile Motion: Initial Velocity = ', num2str(initial_velocity), ' m/s, Launch Angle = ', num2str(launch_angle_deg), '°']);
legend('Trajectory', 'Range', 'Max Height');
grid on;

% Display results
fprintf('Time of flight: %.2f seconds\n', time_of_flight);
fprintf('Maximum height: %.2f meters\n', max_height);
fprintf('Range: %.2f meters\n', range);
