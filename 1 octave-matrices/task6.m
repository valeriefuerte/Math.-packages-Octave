function f = task6(n,a,b)
   a1(1,1:n) = a;
   b1(1,1:n-1) = b;
   c = diag(a1);
   d = diag(b1,1);
   e = diag(b1,-1);
   f = c + d + e;
endfunction
