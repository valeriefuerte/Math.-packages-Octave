function A = task1(a, x)
  #a = [1, 2, -2, 4];
  n = length(a) - 1;
  c = 0:n;
  A = a * power(x, c');
endfunction