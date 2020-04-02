rows=['r1','r2','r3']
cols=['c1','c2','c3']
default_mat = ['0' '0' '0'; '0' '0' '0'; '0' '0' '0']
default_vec = ['0' '0' '0']
A = x_mdialog("Enter the data for the matrix A", rows, cols, default_mat)
A = evstr(A)
disp(A, "A =")

// Converting the second column
a1 = A(:, 1)
p1 = a1 * inv(a1' * a1) * a1'
a2 = A(:, 2)
A(:, 2) = a2 - (p1 * a2)

// Converting the third column
a2 = A(:, 2)
p2 = a2 * inv(a2' * a2) * a2'
a3 = A(:, 3)
A(:, 3) = a3 - (p1 * a3) - (p2 * a3)

// We have orthogonal vector, making them orthogonal
a1 = A(:, 1)
a2 = A(:, 2)
a3 = A(:, 3)
Q = [a1/norm(a1) a2/norm(a2) a3/norm(a3)]

//Gram-Schmidt done
disp(Q, "Q =")
