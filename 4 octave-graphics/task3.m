function task3(A)
  hold on;
  #1
  #A = [1 2 3 4 5; 1 4 9 16 25];
  x = A(1,:);
  y = A(2,:);
  plot(x,y,'k');
  #2
  x_center = sum(x)/length(x);
  y_center = sum(y)/length(y);
  plot(x_center,y_center,'x m');
  #3
  B = A;
  B(1,:)-= sum(B(1,:))/length(B(1,:));
  B(2,:)-= sum(B(2,:))/length(B(2,:));
  plot(B(1,:),B(2,:),'r --');
  #4
  C = A;
  fi = 5*pi/180;
  rot =[cos(fi),sin(fi);-sin(fi),cos(fi)];
  C = rot*C;
  plot(C(1,:),C(2,:),'g-.');
  #5
  D = A;
  D(1,:) = D(1,:) - x_center;
  D(2,:) = D(2,:) - y_center;
  D = rot*D;
  plot(D(1,:),D(2,:),'c:');
endfunction