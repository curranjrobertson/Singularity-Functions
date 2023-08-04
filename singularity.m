function f1 = singularity(c, a, n)
  % This function takes vector inputs for the coefficients (c), x-values (a), and the exponent (n)
  % of a singularity function, produces the singularity function, and plots the result.

  pkg load symbolic
syms x;
  func = 0;
  for i = 1:length(c)
    func = c(i)*(x-a(i))^n(i) + func;
  end
disp(func)
end
