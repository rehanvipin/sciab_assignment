rows=['r1','r2','r3']
cols=['c1','c2','c3']
default_mat = ['0' '0' '0'; '0' '0' '0'; '0' '0' '0']
default_vec = ['0' '0' '0']
A = x_mdialog("Enter the data for the matrix A", rows, cols, default_mat)
A = evstr(A)
disp(A, "A =")

u = [1; 1; 1]

// First we find the eigen-vector, we do twelve iterations
for i=0:12
    f = A*u
    u = f/max(f)
end

// We found the eigen vector with the max eigen value
// Now for the Rayleigh quotient
eigenvalue = sum((A*u).*u)/sum(u.*u)
disp(eigenvalue, "Max eigenvalue= ")
