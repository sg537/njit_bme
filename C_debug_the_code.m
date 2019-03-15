
% Generate a nosiy signal

N = 1000;   % Number of data points
fs = 500;   % Sampling rate (sampling frequency)

f = 5;
t = 0:1/fs:(N-1)/fs;        % Time vector
x = sin(2*pi*f*t);          % Signal
noise = rand(size(x),1);   % Noise

noisy_x = x + noise; % There is a mistake here

% Plotting
figure;
subplot(211); plot(t, x); title('Signal')
subplot(212); plot(t, noisy_x); title('Signal + noise'); xlabel('Time(s)');
























% Hints:
% 1. size -> length
% 2. transpose x
% 3. rand -> randn