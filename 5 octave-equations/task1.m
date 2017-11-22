function root = task1(n)
  p = ones(1, n+1);
  root = roots(p);
  plot(real(root), imag(root), 'xk');
endfunction