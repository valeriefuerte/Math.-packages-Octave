function centers = reevaluate_centers(xy, c, k)
  centers = [];
  for i = 1:k
    x = 0;
    y = 0;
    count = 0;
    for j = 1:rows(xy)
      if(c(j) == i)
        x+= xy(j, 1);
        y+= xy(j, 2);
        count++;
      endif
    endfor
    centers = [centers; x/count, y/count];
  endfor
  centers = centers';
endfunction