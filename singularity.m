function f1 = singularity(c, a, n)
  % Author: Curran Robertson
  % Date: August 5, 2023 (W.I.P)
  % This function takes vector inputs for the coefficients (c), x-values (a), and the exponent (n)
  % of a singularity function, produces the singularity function, and plots the result.

  pkg load symbolic
  syms x;
  y = 0;
  for i = 1:length(c)
    func = c(i)*(x-a(i))^n(i).*(heaviside(x-a(i)))
    if (i - 1) <= 0
      val(i) = func
      cond(i) = ( 0 < x ) & (x < a(i) )
    else
      val(i) = func
      cond(i) = ( a(i-1) < x ) & (x < a(i) )
    end
    y = piecewise(cond(i), val(i))
  end
  figure
  ezplot(cond(i), val(i))
  disp(func) % Replace Parentheses with angle brackets
end
