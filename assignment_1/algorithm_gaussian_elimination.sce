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
