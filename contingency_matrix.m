% Given matrices
obs = [4000, 2000; 3500, 500];
exp = [4500, 1500; 3000, 1000];

% Calculate squared differences
squared_diff = (obs - exp).^2;

% Divide each squared difference by the corresponding element in 'exp'
chi = sum(squared_diff(:) ./ exp(:));

disp("Value of chi:");
disp(chi);

if chi >= 100
  fprintf("+ corelated\n");
else
  fprintf("- Corelated\n");
end
