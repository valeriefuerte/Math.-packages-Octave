function g = task7
   a = zeros(2, 2);
   b = ones(2,2);
   c = [a b];
   d = [b a];
   e = [c; d];
   g = repmat(e,5,5);
endfunction
