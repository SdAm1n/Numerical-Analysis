function root = false_position_method()
  a = 2;
  b = 3;
  max_iter = 10;
  fa = a ^ 3 - 2 * a - 5;
  fb = b ^ 3 - 2 * b - 5;
  if (fa * fb > 0)
    return;
  endif

  iter = 0;
  while (iter < max_iter)
    c = (a * fb - b * fa)/(fb - fa);
    fc = c ^ 3 - 2 * c - 5;
    if (fc == 0)
      root = c;
    else if(fa * fb < 0)
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

