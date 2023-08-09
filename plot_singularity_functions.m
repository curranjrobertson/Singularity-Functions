function plot_singularity_functions(c, a, n)
  % This function takes vector inputs for the coefficients (c), x-values (a), and the exponent (n)
  % of a singularity function, produces the singularity function, and plots the result.
    pkg load symbolic
    x = linspace(min(a), max(a), 1000);
    y = zeros(size(x));

    for i = 1:length(c)
      if n(i) >= 0
        y = y + c(i).*(x-a(i)).^(n(i)).*heaviside(x-a(i));
      else
        y = y + c(i).*(x - a(i)).^n(i);
      end
    end

    plot(x, y);
    xlabel('x');
    ylabel('Singularity Function');
    title('Plot of Singularity Functions');

end
