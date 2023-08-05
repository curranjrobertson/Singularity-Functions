function f1 = singularity(c, a, n)
  % Author: Curran Robertson
  % Date: August 5, 2023
  % This function takes vector inputs for the coefficients (c), x-values (a), and the exponent (n)
  % of a singularity function, produces the singularity function, and plots the result.

  pkg load symbolic
  syms x;
  for i = 1:length(c)
    func = c(i)*(x-a(i))^n(i).*(heaviside(x-a(i)))
    if (i - 1) <= 0
      val(i) = func
      cond(i) = ( 0 < x ) & (x < a(i) )
    else
      val(i) = func
      cond(i) = ( a(i-1) < x ) & (x < a(i) )
    end
  end

  y = 0;
  for i = 1:length(c)
    y = piecewise(cond(i), val(i), y)
  end

  ezplot(y)
  disp(func) % Replace Parentheses with angle brackets
end
