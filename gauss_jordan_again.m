clc;
A = [10 3 1;3 10 2;1 2 10];
B = [19;29;35];
N = length(B);
Aug = [A B];
X = zeros(N,1);

for i=1:N
  for j = i+1:N
    m = Aug(j, i)/Aug(i,i);
    Aug(j, :) = Aug(j,:) - m*Aug(i,:);
  end
end

disp(Aug);
X(N) = Aug(N, N+1)/Aug(N,N);

disp(X);

for k=N-1:-1:1
  X(k) = (Aug(k, N+1)-Aug(k, k+1:N)*X(k+1:N))/Aug(k,k);
end

disp(X);
