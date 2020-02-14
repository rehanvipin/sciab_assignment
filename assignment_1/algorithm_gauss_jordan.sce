rows=['r1','r2','r3']
cols=['c1','c2','c3']
default_mat = ['0' '0' '0'; '0' '0' '0'; '0' '0' '0']
default_vec = ['0' '0' '0']
A = x_mdialog("Enter the data for the matrix A", rows, cols, default_mat)
A = evstr(A)
disp(A, "A =")

n = 3
spl = [A eye(3,3)]

for j=1:n-1
    for i=j+1:n
        spl(i,j: 2*n) = spl(i,j:2*n)-spl(i,j)/spl(j,j)*spl(j,j:2*n);
    end
end

for j=n:-1:2
    spl(1:j-1,:)=spl(1:j-1,:)-spl(1:j-1,j)/spl(j,j)*spl(j,:);
end

for j=1:n
    spl(j,:)=spl(j,:)/spl(j,j);
end

Inverse = spl(:, n+1:2*n)
disp(Inverse, "The inverse is: ")
