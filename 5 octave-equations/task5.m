function Ans = task5(M1, M2)
    M = [M1; M2]';
    x = M(1, :);
    y = M(2, :);
    r = M(3, :);
    h = @(t) f(t, x, y, r);
    if (M1 == M2)
      Ans = [inf; inf];
    else
      [p1] = fsolve(h, [x(1) + r(1), y(2) + r(2)]);
      [p2] = fsolve(h, [x(2) - r(2), y(1) - r(1)]);
      d = sqrt( (x(2)-x(1))^2 + (y(2)-y(1))^2 );
      if (( d > (r(1) + r(2)) ) || (d < (abs(r(2) - r(1))) ))
        Ans = [NaN; NaN];
      else
        Ans = [p1; p2]';
      end
    end
    t = linspace(0, 2*pi);
    xround1 = r(1) .* cos(t) + x(1);
    yround1 = r(1) .* sin(t) + y(1);
    xround2 = r(2) .* cos(t) + x(2);
    yround2 = r(2) .* sin(t) + y(2);
    plot(xround1, yround1, "k", xround2, yround2, "k", Ans(1, :), Ans(2, :), "or");
    axis("equal");
endfunction

function F = f(t, x, y, r)
    F(1) = (t(1) - x(1))^2 + (t(2) - y(1))^2 - r(1)^2;
    F(2) = (t(1) - x(2))^2 + (t(2) - y(2))^2 - r(2)^2;
endfunction
