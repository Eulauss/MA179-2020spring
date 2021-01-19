function graghplot(x,y)
n=max(size(x));            %求出向量维数
c=newtdd(x,y,n);           %得出插值系数
x1=min(x);
x2=max(x);
X=x1:.01:x2;                  %设置函数区间
Y=nest(n-1, c, X, x);    %求值
plot(X, Y, x, y, 'o');
grid on;                          %绘图
end