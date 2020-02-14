rows=['r1','r2','r3']
cols=['c1','c2','c3']
default_mat = ['0' '0' '0'; '0' '0' '0'; '0' '0' '0']
default_vec = ['0' '0' '0']
A = x_mdialog("Enter the data for the matrix A", rows, cols, default_mat)
A = evstr(A)
cops = A
disp(A, "A =")

//Forward elimintation
//Eliminating below first pivot
for i=2:3
    for j=2:3
        factor = A(i,1)/A(1,1)
        A(i,j) = A(i,j) - A(1,j)*factor
    end
    A(i, 1) = 0
end

for i=3:3
    factor = A(3,2)*A(2,2)
    A(3,i) = A(3,i) - A(2,i)*factor
end
A(3, 2) = 0

disp(A, "Echelon form:")

for i= 1:3
    for j = 1:3
        if(A(i,j) <> 0)
            disp(" has a pivot", j, "The column")
            disp(cops(:,j), "One of the element in the bases is: ")
            break
        end
    end
end
