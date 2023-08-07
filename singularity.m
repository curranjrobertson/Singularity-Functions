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
    func = c(i)*(x-a(i))^n(i)*(heaviside(x-a(i)))
    if (i - 1) <= 0
      val(i) = func
      cond(i) = ( 0 < x)
    else
      val(i) = func
      cond(i) = ( 0 < x)
    end
    cond2 = x <= 0
    func2 = 0
    y = piecewise(cond(i), val(i), cond2, func2)
    ezplot(y)
  end
  %disp(func) % Replace Parentheses with angle brackets
end
