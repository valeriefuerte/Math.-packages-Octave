function c = distribute_points(xy, centers, k)
  distribute_table = [power((xy(:, 1)-centers(1, :)),2) + power((xy(:, 2)-centers(2,:)), 2)];
  [min_distribute, c] = min(distribute_table');
  c = c';
endfunction