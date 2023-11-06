 % Define the matrix
A = [-5, -1, -4; 4, 0, -3; 2, -2, 6];

% Calculate the determinant of the matrix
determinant_A = det(A);

% Display the determinant
fprintf('The determinant of the matrix is: %f\n', determinant_A);
The determinant of the matrix is: 92.0000
-------

A = [1 1 0 0]

A =

     1     1     0     0

B = [1;2;3;4]

B =

     1
     2
     3
     4

C=A*B

C =

     3

 ------

syms x y z  % Define symbolic variables
eq1 = 3*x - 5*y + 4*z == 5;  % Define the first equation
eq2 = 5*x + 2*y + z == 0;    % Define the second equation
eq3 = 2*x + 3*y - 2*z == 3;  % Define the third equation

% Solve the system of equations
solution = solve([eq1, eq2, eq3], [x, y, z]);

% Display the solution
x_solution = solution.x;
y_solution = solution.y;
z_solution = solution.z;

fprintf('Solution for x: x = %s\n', char(x_solution));
Solution for x: x = 2
fprintf('Solution for y: y = %s\n', char(y_solution));
Solution for y: y = -3
fprintf('Solution for z: z = %s\n', char(z_solution));
Solution for z: z = -4

%%