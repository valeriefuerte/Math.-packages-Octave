function plot_clusters(xy, c, k)
  marker = "+os.x*d^<ph>v";
  color = "bkcgmrybkcgmr"; 
  hold on;
  for i = 1 : k
    plot(xy(:, 1)(c==i), xy(:, 2)(c==i), [marker(i), color(i)]);
  endfor
endfunction