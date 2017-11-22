function filter_multiples(a,k)
   %a = [1,5,2,8,3,12]
   a(mod(a,k)==0) = []
   a(a>k) = []
endfunction