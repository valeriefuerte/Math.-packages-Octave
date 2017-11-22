function I = clusterization_quality(xy, centers, c, k)
  I = 0;
  for i = 1 : k
    I += sum(power((xy(:, 1)(c == i) - centers(1, i)), 2) + power((xy(:, 2)(c == i) - centers(2, i)), 2));
  endfor
endfunction 
