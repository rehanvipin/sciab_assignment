//Actual Solution, right now for 3x3, with minor changes can do nxn
rows=['r1','r2','r3']
cols=['c1','c2','c3']
default_mat = ['0' '0' '0'; '0' '0' '0'; '0' '0' '0']
default_vec = ['0' '0' '0']
A = x_mdialog("Enter the data for the matrix A", rows, cols, default_mat)
A = evstr(A)
disp(A, "A =")

B = x_mdialog("Enter the data for the vector B", rows, default_vec)
B = evstr(B)
disp(B, "B =")

Augmented = [A B]
disp(Augmented, "Augumented matrix =")

//Forward elimintation
//Eliminating below first pivot
for i=2:3
    for j=2:4
        factor = Augmented(i,1)/Augmented(1,1)
        Augmented(i,j) = Augmented(i,j) - Augmented(1,j)*factor
    end
    Augmented(i, 1) = 0
end

for i=3:4
    factor = Augmented(3,2)*Augmented(2,2)
    Augmented(3,i) = Augmented(3,i) - Augmented(2,i)*factor
end
Augmented(3, 2) = 0

disp(Augmented, "Augmented after elimination = ")

sol(3) = Augmented(3, 4)/Augmented(3, 3)    //The last variable
for i=2:-1:1
    temp = 0
    for j=i+1:3
        temp = temp + Augmented(i,j)*sol(j)
    end
    sol(i) = (Augmented(i, 4)-temp)/Augmented(i,i)
end

disp(sol, "The solution is")

/*  Attempt to solve by porting from python
clc
clear
A = [2 3 -1; 4 4 -3; -2 3 -1]; 
B = [5; 3; 1]
n = length(B);
Aug = [A, B];

for j = 1: n-1
    for i = j+1: n
        Aug(i, j : n+1) = Aug(i, j :n+1)-Aug(i/j)/Aug(j,j)*Aug(j, j:n+1)
       end
end

x = zeros(n, 1);
x(n) = Aug(n, n+1)/Aug(n,n);
for i = n-1: -1:1
    x(i) = (Aug(i, n+1) - Aug(i, i+1:n) * x(i+1:n)/Aug(i,i))
end

disp(x(3), x(2), x(1), "The values of x, y, and z are")
*/
