dsip("problem 1")


A = [8 5 -6 ; -12 -9 12; -3 -3 5]

A =

     8     5    -6
   -12    -9    12
    -3    -3     5

[ev, dv]=eig(A)

ev =

    0.3015   -0.7071    0.7071
   -0.9045    0.7071    0.0000
   -0.3015   -0.0000    0.7071


dv =

   -1.0000         0         0
         0    3.0000         0
         0         0    2.0000

ev1 = [0.3015; -0.9045; -0.3015]

ev1 =

    0.3015
   -0.9045
   -0.3015

ev2 = [-0.7071; 0.7071; -0.0000]

ev2 =

   -0.7071
    0.7071
         0

ev3 = [0.7071; 0.0000; 0.7071]

ev3 =

    0.7071
         0
    0.7071

J = A*ev(:,1);
J

J =

   -0.3015
    0.9045
    0.3015

a = A*ev(:,2);
a

a =

   -2.1213
    2.1213
   -0.0000

y = J = A*ev(:,3);
 y = J = A*ev(:,3);
       ↑
Incorrect use of '=' operator. Assign a value to a variable using '=' and compare values for equality using '=='.
 
Did you mean:
y = A*ev(:,3);
y

y =

    1.4142
   -0.0000
    1.4142

--------

disp("Problem 2")
A = [1, 1, 1; 1, 0, -1; 0, -3, 1];
B = [89; -6; 0];

X = linsolve(A, B);

% Display the results
fprintf('Student A has Php %.2f\n', X(1));
fprintf('Student B has Php %.2f\n', X(2));
fprintf('Student C has Php %.2f\n', X(3));
Student A has Php 34.71
Student B has Php 13.57
Student C has Php 40.71

--------


disp("Problem3")
syms x y z;

eq1 = 3*x - 1*y + 1*z == 5;
eq2 = 9*x - 3*y + 3*z == 15;
eq3 = -12*x + 4*y - 4*z == -20;

sol = solve([eq1,eq2,eq3]).([x,y,z])