%给定n×8的矩阵，画出贝塞尔曲线
function bezier(A)
n=size(A);
n=n(1);
t=0: .02: 1;
  for k=1:n
      x=A(k,[1 3 5 7]);
      y=A(k,[2 4 6 8]);
  bx=3*(x(2)-x(1)); by=3*(y(2)-y(1)); 
  cx=3*(x(3)-x(2))-bx;cy=3*(y(3)-y(2))-by;
  dx=x(4)-x(1)-bx-cx;dy=y(4)-y(1)-by-cy;
  xp=x(1)+t.*(bx+t.*(cx+t*dx));    
  yp=y(1)+t.*(by+t.*(cy+t*dy));
  plot(xp,yp,'r');
  grid on;
  hold on;
  end
  hold off;