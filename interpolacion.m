h = [-1000, 0, 3000, 8000, 15000, 22000, 28000];
T = [213.9, 212.0, 206.2, 196.2, 184.4, 172.6, 163.1];

h_metros = input('Ingresa la altura en metros: ');
h_pies = h_metros * 3.280839895;

T_h_F = interp1(h, T, h_pies, 'pchip');

fprintf('La temperatura de ebullición a %.2f metros (%.2f pies) es: %.2f °F\n', h_metros, h_pies, T_h_F);

figure;
plot(h, T, '-o', 'LineWidth', 2);
hold on;
plot(h_pies, T_h_F, 'rx', 'MarkerSize', 10, 'LineWidth', 2);
xlabel('Altitud (pies)');
ylabel('Temperatura (°F)');
title('Relación entre altitud y temperatura de ebullición (°F)');
grid on;

