function xy = k_means_generate_clusters(k)
  xy = [];
  for i = 1 : k
    xy = [xy; generate_cluster(100)];
  endfor
endfunction

function xy = generate_cluster(n)
  m = rand(1, 2) * 50;
  s = rand * 3 + 1;
  xy = randn(n, 2) .* s + m;
endfunction