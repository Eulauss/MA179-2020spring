%���ø������η������f��[a,b]�ϵ��������֣�mh=b-a
%m��������
%����������㺯��
function I=c_trapezoidal(f,a,b,m)
f=@(x) subs(f,x);
h=(b-a)/(m);
x=(1 : m)*h+a;
S=f(a)+f(b);
for k=1:m-1
    S=S+2*f(x(k));
end
I=h/2*S;