rows=['r1','r2','r3']
cols=['c1','c2','c3']
default_mat = ['0' '0' '0'; '0' '0' '0'; '0' '0' '0']
default_vec = ['0' '0' '0']
A = x_mdialog("Enter the data for the matrix A", rows, cols, default_mat)
A = evstr(A)
disp(A, "A =")

// Find the eigenvalues
es = spec(A)
//disp(es)

n = length(es)

for i=1:n
    eigenvalue = es(i)
    eigenvector = kernel(A-eigenvalue*eye(3,3))
    if(length(eigenvector) == 3) then
        disp(eigenvector, "eigenvector=")
    end
end
