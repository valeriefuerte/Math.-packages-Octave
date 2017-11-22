function [Res1, Res2, Res3, Res4] = task4(a)
  Res1 = fun1(a);
  Res2 = fun2(a);
  Res3 = fun3(a);
  Res4 = fun4(a);
endfunction

function y = f(x, a)
   y = exp(x) - exp(-x) - a;
endfunction

function X = fun1(a)
  [X] = fsolve( @(x) f(x, a), 1); 
endfunction

function X = fun2(a)
  [X] = fzero( @(x) f(x, a), [-a, a]);
endfunction

function X = fun3(a)
  X = asinh(a / 2);
endfunction

function X = fun4(a)
  X = fun3(a) - fun1(a);
endfunction
