rows=['r1','r2','r3']
cols=['x','y']
default_mat = ['0' '0'; '0' '0'; '0' '0']
default_vec = ['0' '0' '0']
A = x_mdialog("Enter the recorded values", rows, cols, default_mat)
A = evstr(A)
disp(A, "A =")

B = x_mdialog("Enter the data for the vector B", rows, default_vec)
B = evstr(B)
disp(B, "B =")

X_est = (A'*A)\(A'*B)
disp(X_est)

C = X_est(1);
D = X_est(2);

disp("The least square line is of the form C+Dt = b")
disp(C,"Where c=")
disp(D,"And d=")
