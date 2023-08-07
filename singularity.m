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
  condBound = x <= 0
  funcBound = 0
  af = a(length(a))
  condBound2 = x >= af
  funcBound2 = 0
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
    y = piecewise(cond(i), val(i), condBound, funcBound, condBound2, funcBound2)
    ezplot(y)
  end
  %disp(func) % Replace Parentheses with angle brackets
end
