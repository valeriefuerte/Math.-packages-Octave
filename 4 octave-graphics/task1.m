function [x,y] = task1
  x=-2*pi:0.01:2*pi;
  plot(x,sin(x)+sin(3*x));
endfunction