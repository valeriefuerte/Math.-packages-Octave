function Res = task3()
  [Res] = fsolve(@f, [1, 1])
endfunction

function y = f(x)
   y(1,1) = x(1) + sin(x(2)) - 1;
   y(2,1) = x(2) + cos(x(1)) - 1;
endfunction