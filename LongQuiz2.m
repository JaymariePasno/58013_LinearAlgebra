% Define the matrix A
A = [1 2 3; 4 5 6; 7 8 9];

% a. Transpose of A (A^T)
AT = A';

% b. A + A
 A_plus_A = A + A;

% c. A * A
A_times_A = A * A;

% Display the results
disp('Transpose of A (A^T):');
Transpose of A (A^T):
disp(AT);
     1     4     7
     2     5     8
     3     6     9

disp(A_plus_A);
     2     4     6
     8    10    12
    14    16    18

disp(A_times_A);
    30    36    42
    66    81    96
   102   126   150

disp(determinant_A);
   6.6613e-16

% a. Extract the submatrix [2,3; 5,6; 8,9]

submatrix = A([2 3], [2 3]);

% b. Determine the dimensions of the matrix
[rows, cols] = size(A);

% c. Change the element A(3,2) to 0
A(3,2) = 0;

% Display the results
disp('Submatrix:');
Submatrix:
disp(submatrix);
     5     6
     8     9

disp('Dimensions of the matrix:');
Dimensions of the matrix:
disp(['Rows: ', num2str(rows)])
Rows: 3

disp(['Columns: ', num2str(cols)]);
Columns: 3

disp('Matrix A after changing A(3,2) to 0:');
Matrix A after changing A(3,2) to 0:
disp(A);
     1     2     3
     4     5     6
     7     0     9
% Define the coefficient matrix A and the right-hand side vector B
A = [5, 4, 1; 10, 9, 4; 10, 13, 15];
B = [3.4; 8.8; 19.2];

 Perform Doolittle decomposition
[L, U, P] = lu(A);
y = L \ (P * B);
% Solve for the solution vector x using back substitution
x = U \ y;

% Display the solution vector x
disp('Solution vector x:');
Solution vector x:
disp(x);
    0.2000
    0.4000
    0.8000