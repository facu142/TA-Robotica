% Definir los ángulos de rotación
theta1 = 100.00; % Rotación alrededor de 0X
theta1 = deg2rad(theta1); % Convertir a radianes

theta2 = -4.00; % Rotación alrededor de 0Z
theta2 = deg2rad(theta2); % Convertir a radianes

% Definir los vectores de traslación
p1 = [-5.00, -5.00, -6.00];
p2 = [-4.00, -4.00, -1.00];

% Definir el vector r en el sistema OUVW
r_uvw = [-2.00, -3.00, -6.00];

% Matriz de rotación alrededor de 0X
R_x = [1 0 0;
       0 cos(theta1) -sin(theta1);
       0 sin(theta1) cos(theta1)];

% Matriz de rotación alrededor de 0Z
R_z = [cos(theta2) -sin(theta2) 0;
       sin(theta2) cos(theta2) 0;
       0 0 1];

% Aplicar la primera rotación alrededor del eje X
r_rotated_1 = (R_x * r_uvw')';

% Aplicar la primera traslación
r_translated_1 = r_rotated_1 + p1;

% Aplicar la segunda rotación alrededor del eje Z
r_rotated_2 = (R_z * r_translated_1')';

% Aplicar la segunda traslación
r_xyz = r_rotated_2 + p2;

% Mostrar las coordenadas resultantes
disp('Las coordenadas del vector r en el sistema 0XYZ son:');
disp(r_xyz);
