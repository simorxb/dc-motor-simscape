% Access the signals from out.logsout

omega = out.logsout.get('omega').Values.Data;
t_omega = out.logsout.get('omega').Values.Time;
current = out.logsout.get('current').Values.Data;
t_current = out.logsout.get('current').Values.Time;
input_voltage = out.logsout.get('input_voltage').Values.Data;
t_input_voltage = out.logsout.get('input_voltage').Values.Time;
omega_ssc = out.logsout.get('omega_ssc').Values.Data;
t_omega_ssc = out.logsout.get('omega_ssc').Values.Time;
current_ssc = out.logsout.get('current_ssc').Values.Data;
t_current_ssc = out.logsout.get('current_ssc').Values.Time;
input_voltage_ssc = out.logsout.get('input_voltage_ssc').Values.Data;
t_input_voltage_ssc = out.logsout.get('input_voltage_ssc').Values.Time;

% Create the first figure
figure;

% Subplot for omega
subplot(3, 1, 1);
plot(t_omega, omega, 'LineWidth', 2);
hold on;
plot(t_omega_ssc, omega_ssc, '--', 'LineWidth', 2);
hold off;
%xlabel('Time (s)');
ylabel('Angular speed (rad/s)');
legend({'Simulink', 'Simscape'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;

% Subplot for current
subplot(3, 1, 2);
plot(t_current, current, 'LineWidth', 2);
hold on;
plot(t_current_ssc, current_ssc, '--', 'LineWidth', 2);
hold off;
%xlabel('Time (s)');
ylabel('Current (A)');
legend({'Simulink', 'Simscape'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;

% Subplot for voltage
subplot(3, 1, 3);
plot(t_input_voltage, input_voltage, 'LineWidth', 2);
hold on;
plot(t_input_voltage_ssc, input_voltage_ssc, '--', 'LineWidth', 2);
hold off;
xlabel('Time (s)');
ylabel('Input Voltage (A)');
legend({'Simulink', 'Simscape'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;