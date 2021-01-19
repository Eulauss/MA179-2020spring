%利用复合梯形法则求解f在[a,b]上的黎曼积分，mh=b-a
%m个子区间
%输入符号运算函数
function I=c_trapezoidal(f,a,b,m)
f=@(x) subs(f,x);
h=(b-a)/(m);
x=(1 : m)*h+a;
S=f(a)+f(b);
for k=1:m-1
    S=S+2*f(x(k));
end
I=h/2*S;