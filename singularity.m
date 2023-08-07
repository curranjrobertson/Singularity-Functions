function f1 = singularity(c, a, n)
  % Author: Curran Robertson
  % Date: August 5, 2023 (W.I.P)
  % This function takes vector inputs for the coefficients (c), x-values (a), and the exponent (n)
  % of a singularity function, produces the singularity function, and plots the result.
  c = [1 2 3]
  a = [1 2 3]
  n = [1 2 3]
  pkg load symbolic
  syms x
  L = length(c)
 % Error caused by not containing all x-values
  for i = 1:L
    func = c(i)*(x-a(i))^n(i)%*(heaviside(x-a(i)))
    if (i - 1) <= 0
      y = func
      cond = ( abs(x) < 1 & abs(x) > 1)
    else
      y = func
      cond = ( abs(x) > 1 & abs(x) > 1)
    end
    cond
    func
    y = piecewise(cond, func)
    ezplot(y)
  end
  disp(func) % Replace Parentheses with angle brackets
end
