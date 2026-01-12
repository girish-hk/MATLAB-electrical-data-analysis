clc;
clear;

% Create time vector
t = linspace(0,10,1000);

% Create synthetic electrical signals
voltage = 230 + 10*sin(2*pi*0.5*t);
current = 5 + 0.5*sin(2*pi*0.5*t + pi/4);
temperature = 25 + 0.2*t ;

% Plot Voltage
figure;
plot(t, voltage, 'b', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Voltage vs Time');
grid on;

% Plot Current
figure;
plot(t, current, 'r', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Current (A)');
title('Current vs Time');
grid on;

% Plot Temperature
figure;
plot(t, temperature, 'g', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Temperature (°C)');
title('Temperature vs Time');
grid on;


% Basic electrical analysis
mean_voltage = mean(voltage);
max_current = max(current);
final_temperature = temperature(end);

% Display results
disp(['Mean Voltage: ', num2str(mean_voltage), ' V']);
disp(['Maximum Current: ', num2str(max_current), ' A']);
disp(['Final Temperature: ', num2str(final_temperature), ' °C']);% Power calculation
power = voltage .* current;

% Plot Power
figure;
plot(t, power, 'k', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Power (W)');
title('Electrical Power vs Time');
grid on;

% Power analysis
mean_power = mean(power);
max_power = max(power);

disp(['Mean Power: ', num2str(mean_power), ' W']);
disp(['Maximum Power: ', num2str(max_power), ' W']);




