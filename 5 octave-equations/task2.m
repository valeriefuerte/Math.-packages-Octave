function Res = task2()
  [Res] = fsolve(@f, 1)
endfunction

function y = f(x)
    y = x + sin(x) - 1;
endfunction
