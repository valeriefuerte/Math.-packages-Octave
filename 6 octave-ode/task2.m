function task2()
    x = linspace(0, 10, 100)';
    y = lsode(@df, [-1, 1], x);
    plot(x, y(:, 1)', 'k-');
endfunction

function f = df(x, t)
    f(1) = x(2);
    f(2) = -(cos(t)+1)*x(1);
endfunction
