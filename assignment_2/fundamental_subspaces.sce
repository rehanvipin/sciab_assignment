rows=['r1','r2','r3']
cols=['c1','c2','c3']
default_mat = ['0' '0' '0'; '0' '0' '0'; '0' '0' '0']
default_vec = ['0' '0' '0']
A = x_mdialog("Enter the data for the matrix A", rows, cols, default_mat)
A = evstr(A)
disp(A, "A =")

m = 3;
n = 3;
[v,pivot]=rref(A); 
disp(pivot, "The pivots are")

r=length(pivot);
disp(r,'rank=');
bases=A(:,pivot);
disp(bases,'The basis vectors are=');
row_bases=v(1:r,:)';
disp(row_bases,"The basis vectors for the A(transpose) matrix are=");
null_space=kernel(A); 
disp(null_space,'Null Space=');
Left_Null_space=kernel(A');
disp(Left_Null_space,'Left Null Space=');
