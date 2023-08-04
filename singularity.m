function f1 = singularity(c, a, n)
  % This function takes vector inputs for the coefficients (c), x-values (a), and the exponent (n)
  % of a singularity function, produces the singularity function, and plots the result.

  pkg load symbolic
syms x;
  func = 0;
  for i = 1:length(c)
    func = c(i)*(x-a(i))^n(i) + func;
  end

disp(func) % Replace Parentheses with angle brackets

x = 0:0.1:max(a)
for j  = 1:length(c)
    func = c(j).*(x-a(j)).^n(j) + func;
    if (j - 1) <= 0
      x = 0:0.1:a(j)
      plot(x, func)
    else
      x = a(j-1):0.1:a(j)
      fplot(x , func)
    end
end

end
