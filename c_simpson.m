%���ø�������ɭ�������f��[a,b]�ϵ��������֣�2mh=b-a
%2m��������
function I=c_simpson(f,a,b,m)
h=(b-a)/(2*m);
x=(1 : 2*m)*h+a;
S=f(a)+f(b);
for k=1:m-1
    S=S+4*f(x(2*k-1))+2*f(x(2*k));
end
I=h/3*(S+4*f(x(2*m-1)));