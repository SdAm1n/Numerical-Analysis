f = @(x) 2 ^ x - 5 * x + 2;
df = @(x) (2 ^ x) * log(2) - 5;
e = 10^-4;
n = 20;
x0 = 0;
i = 1;
if df(x0) ~= 0
  for i = i : n
    x1 = x0 - (f(x0)/df(x0));
    fprintf('X%d %0.2f\n', i , x1);
    if abs(x1-x0) < e
      break;
    endif
    x0=x1;
  endfor
end

