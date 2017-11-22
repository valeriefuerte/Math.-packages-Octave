function b = task2(n)
   a = rand(n,n);
   c = a(1:n/2, 1:n);
   d = a(n/2+1:n, 1:n);
   b = [d;c];
endfunction
