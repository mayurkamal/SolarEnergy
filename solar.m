% Constants
q = 1.602e-19;          % Charge of electron (C)
k = 1.381e-23;          % Boltzmann constant (J/K)
T = 298;                % Temperature (Kelvin), ~25°C
n = 2;                  % Diode ideality factor
Iph = 5.5;              % Photo-generated current (A)
Io = 1e-10;             % Reverse saturation current (A)
Rs = 0.3;               % Series resistance (Ohms)

% Current range: from 0 to Iph (since I cannot exceed Iph)
I = linspace(0, Iph, 1000);

% Calculate V for each I using the equation:
V = (n * k * T / q) .* log((Iph - I) ./ Io + 1) - I .* Rs;

% Plot I-V curve
figure;
plot(V, I, 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Current (A)');
title('I-V Characteristic of a PV Cell');
grid on;
xlim([0 max(V)]);
ylim([0 Iph + 0.5]);
