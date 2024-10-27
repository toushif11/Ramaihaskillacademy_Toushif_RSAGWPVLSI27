

% Prompt user to enter the value of n
n = input('Enter the value of n (upper limit for random integers): ');

% Generate a sequence of random integers from 1 to n
random_sequence = randi([1, n], 1, n); % 1 x n array of random integers between 1 and n

% Plot the random integer sequence
figure;
plot(random_sequence, 'b-', 'LineWidth', 1.5);
hold on;

% Customize plot
title(['Random Integer Sequence from 1 to ', n]);
xlabel('Index');
ylabel('Random Integer Value');
grid on;
legend('Random Sequence');

% Display information
fprintf('Generated %d random integers from 1 to %d.\n', n, n);
