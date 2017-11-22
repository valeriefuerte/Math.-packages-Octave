function b = task2
    b = zeros(10, 10);
    b(2:2:end, 1:2:end) = 1;
    b(1:2:end, 2:2:end) = 1;
endfunction
