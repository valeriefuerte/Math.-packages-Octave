function [x, y1, y2] = task1()
    x = linspace(0, 1, 100);    
    y1 = lsode(@df, 1, x)';
    y2 = exp(-2.*x) + x./2;
    hold on;
    plot(x, y1, "k-", x, y2, "b:");
endfunction

function f = df(x, t)
    f = -2.*x + t + 1/2;
endfunction
