% Definir la traslación y la rotación
p = [-4.00, -4.00, -1.00];
theta = -69.00; % ángulo de rotación en grados
theta = deg2rad(theta); % convertir a radianes

% Definir el vector r en el sistema OUVW
r_uvw = [-2.00, -3.00, -6.00];

% Crear la matriz de rotación alrededor del eje Y
R_y = [cos(theta) 0 sin(theta);
       0          1 0;
      -sin(theta) 0 cos(theta)];

% Aplicar la rotación al vector r_uvw
r_rotated = (R_y * r_uvw')';

% Aplicar la traslación al vector rotado
r_xyz = r_rotated + p;

% Mostrar las coordenadas resultantes
disp('Las coordenadas del vector r en el sistema 0XYZ son:');
disp(r_xyz);
