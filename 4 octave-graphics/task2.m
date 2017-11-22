function [x,y] = task2
  f = @(x) sum(1/5 * sin([x:x:x*10]));
  x = -2*pi:0.01:2*pi;
  plot(x, arrayfun(f,x));
endfunction