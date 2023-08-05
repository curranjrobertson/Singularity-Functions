function f1 = singularity(c, a, n)
  % This function takes vector inputs for the coefficients (c), x-values (a), and the exponent (n)
  % of a singularity function, produces the singularity function, and plots the result.

  pkg load symbolic
syms x;
  func = 0;
  for i = 1:length(c)
    func = c(i)*(x-a(i))^n(i).*(heaviside(x-a(i))) + func
    if (i - 1) <= 0
      figure
      ezplot(func, [0 a(i)])
    else
      figure
      ezplot(func, [a(i-1) a(i)])
    end
  end
hold off

disp(func) % Replace Parentheses with angle brackets
end
