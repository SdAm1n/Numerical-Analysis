A = input('Enter the matrix: ');
B = input('Enter the source vector: ');
N = length(B);
X = zeros(N, 1);

Aug = [A B];
for j=1:N-1
  for i=j+1:N
    m = Aug(i, j)/ Aug(j, j);
    Aug(i, :) = Aug(i, :) - m * Aug(j, :);
  endfor
end

disp(Aug);

X(N) = Aug(N, N+1)/Aug(N,N);
for k=N-1:-1:1
  X(k) = (Aug(k, N+1) - Aug(k, k+1:N) *X(k+1:N))/Aug(k, k);
end

disp(X);

