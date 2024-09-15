% Definir el ángulo de rotación
theta = 93.00; % Rotación alrededor de 0Z
theta = deg2rad(theta); % Convertir a radianes

% Definir el vector de traslación
p = [-2.00, -6.00, -3.00];

% Definir el vector r en el sistema OUVW
r_uvw = [-8.00, -2.00, -9.00];

% Matriz de rotación alrededor de 0Z
R_z = [cos(theta) -sin(theta) 0;
       sin(theta) cos(theta) 0;
       0 0 1];

% Aplicar la rotación al vector r_uvw
r_rotated = (R_z * r_uvw')';

% Aplicar la traslación al vector rotado
r_xyz = r_rotated + p;

% Mostrar las coordenadas resultantes
disp('Las coordenadas del vector r en el sistema 0XYZ son:');
disp(r_xyz);
