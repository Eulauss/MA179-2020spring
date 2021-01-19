%构造cos函数的计算器键
function y=cos1(x)
b=pi*(0:3)/6;
yb=cos(b);    
c=newtdd(b,yb,4);
s=1;  t=1;                     %用来纠正符号的变量
x1=mod(x,2*pi);
if x1>pi
  x1 = x1-pi;
  s = -1;
end
if x1 > pi/2
  x1 = pi-x1;
  t = -1;
end
y = s*t*nest(3,c,x1,b);