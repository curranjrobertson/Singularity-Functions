function plot_singularity_functions(c, a, n)
  % Curran Robertson
  % This function takes vector inputs for the coefficients (c), x-values (a), and the exponent (n)
  % of a singularity function and plots the result.
    pkg load symbolic
    x = linspace(min(a), max(a), 1000);
    y = zeros(size(x));

    for i = 1:length(c)
        y = y + c(i).*(x-a(i)).^(n(i)).*heaviside(x-a(i));
    end
    plot(x, y);
    xlabel('x');
    ylabel('Singularity Function');
    title('Plot of Singularity Function');

end
