a = -1;
b = -3;
max_iter = 20;
f = @(x) (3 * x ^ 4) - (2 * x ^ 2) - (2 * x) - 8;
fa = f(a);
fb = f(b);
if (fa * fb > 0)
  error('Error');
endif

iter = 0;
while (iter < max_iter)
  c = (a * fb - b * fa)/(fb - fa);
  fc = f(c);
  if (fc == 0)
    root = c;
  elseif (fa * fc < 0)
    b = c;
    fb = fc;
  else
    a = c;
    fa = fc;
  end
  %fprintf('iter: %d', iter);
  iter++;
end

root = (a + b) / 2;
fprintf('Iter: %d = Root: %f\n',iter,root);
