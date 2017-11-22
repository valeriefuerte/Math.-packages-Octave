function c = k_means(xy, k)
  clustering = [];
  mistake = [];
  for j = 1:10
    centers = select_k_clusters(xy, k);   
    for i = 1:10
      c = distribute_points(xy, centers, k);
      centers = reevaluate_centers(xy, c, k);     
      plot_clusters(xy, c, k);
      pause(0.2);
      cla reset;
    endfor
      I = clusterization_quality(xy, centers, c, k);
      clustering = [clustering, c];
      mistake = [mistake, I];   
  endfor
  [min_mistake, min_mistake_index] = min(mistake);
  c = clustering(:, min_mistake_index);
endfunction
