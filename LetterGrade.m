score = input('Enter a score (0 to 100):');
fprintf('Score: %d\n',score);
if score>=90
  fprintf('Letter Grade is A\n');
elseif score>=80
  fprintf('Letter Grade is B\n');
else
  fprintf('Letter Grade is F\n');
end

