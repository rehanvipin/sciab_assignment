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

L = eye(3,3)

disp(L)
for i=1:3
    for j=1:3
        s=0;
        if j>=i
            for k=1:i-1
                s=s+L(i,k)*U(k,j);
            end
            U(i,j)=A(i,j)-s;
        else
            for k=1:j-1
                s=s+L(i,k)*U(k,j);
            end
            L(i,j)=(A(i,j)-s)/U(j,j);
        end
    end
end

disp("Checking if L*U = A")
disp(A, "A =")
disp(L*U, "L*U =")
sol = inv(U)*inv(L)*B
disp(sol, "The solutions are")
