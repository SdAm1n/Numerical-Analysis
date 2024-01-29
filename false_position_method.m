function func = false_position_method()
  a = -1;
  b = -3;
  max_iter = 10;
  f = @(x) (3 * x ^ 4) - (2 * x ^ 2) - (2 * x) - 8;
  %f = @(x) x ^ 3 - 2 * x - 5;
  fa = f(a);
  fb = f(b);
  %fa = a ^ 3 - 2 * a - 5;
  %fb = b ^ 3 - 2 * b - 5;
  if (fa * fb > 0)
    error('Error');
  endif

  iter = 0;
  while (iter < max_iter)
    c = (a * fb - b * fa)/(fb - fa);
    %fc = c ^ 3 - 2 * c - 5;
    fc = f(c);
    if (fc == 0)
      root = c;
    else if(fa * fc < 0)
      b = c;
      fb = fc;
    else
      a = c;
      fa = fc;
    end
    iter++;
  end

  root = (a + b) / 2;
  fprintf('Iter: %d = Root: %f\n',iter,root);
end

