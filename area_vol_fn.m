function [A, V] = area_vol_fn(r)
  % function for sphere area and volume
  % r is the radius of sphere
  A = 4 * pi * r ^ 2;
  V = 4/3 * pi * r ^ 3;
end
