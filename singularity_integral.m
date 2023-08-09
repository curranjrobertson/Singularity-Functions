function singularity_integral(c, a, n, t)
  % Curran Robertson
  % This function takes vector inputs for the coefficients (c), x-values (a), the exponent (n), and the number of integrations
  % of a singularity function (t) and produces the singularity function.
  % Note: This integration function was meant for beam theory applications and
  % works for up to 4 integrations. The constants of integration are d and e.
  pkg load symbolic
  syms x y d e
  const = 0; % initiate constant of integration
  for i = 1:t
    n(:) = n(:) + 1;
    if i == 3
      const = d;
    elseif i == 4
      const = d*x + e;
    end
  end
  for i = 1:length(c)
    y = y + c(i)*(x-a(i))^(n(i))*heaviside(x-a(i)) + const;
  end

  disp(y)
end
