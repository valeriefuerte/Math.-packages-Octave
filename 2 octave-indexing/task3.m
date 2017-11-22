function c = task3(n)
   %c = [1 2 3 6 9 12 13 15 18];
   c = randi(100, 1, n);
   c(mod(c,3)!=0) = [];
endfunction
