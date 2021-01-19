%实现非线性方程求解的Broyden2方法
% Input: x0 initial vector, k = max steps
% Output: solution x
% Example usage: broyden1(f,[1;2],10)
function x=broyden2(f,x0,k)
[n,m]=size(x0);
a=eye(n,n);           % initial b
for i=1:k
  x=x0-a\f(x0);
  del=x-x0;delta=f(x)-f(x0);
  a=a+(delta-a*del)*del'/(del'*del);
  x0=x;
end