function singularity_integral(c, a, n, t)
  pkg load symbolic
  syms x y
  for i = 1:t
    n(:) = n(:) + 1;
  end

  y = y + c(i)*(x-a(i))^(n(i))*heaviside(x-a(i));
  disp(y)
end
