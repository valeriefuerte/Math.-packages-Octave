function C = task3(A)
  #A = [1 1 1 ; 1 -1 1];
   C(:, 1) = -A(:,1)./A(:,2);
   C(:, 2) = -A(:,3)./A(:,2);
endfunction