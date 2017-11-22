function task3(alfa, beta, gamma, delta, s)
  x = linspace(-pi, pi);
  for k = 0:5
    ans = lsode(@(t, x) u(t, x, alfa, beta, gamma, delta), [gamma / delta, alfa / beta + k * s], x);
    plot(ans, 'k-');
  endfor
endfunction

function f = u(t, x, a, b, g, d)
  f(1) = (a - b * t(2)) * t(1);
  f(2) = (-g + d * t(1)) * t(2);
endfunction
