%ʵ�ֶԳ����������cholesky�ֽⲢ������Է�����
%����Գ���������a��Ŀ������b
%��������޸ģ������Ǿ���R�������������λش���x
function x=cholesky_deco(a,b)
n=length(b);
%����һ���ָ���cholesky�ֽ����r
r=zeros(n);
for k=1:n
    if abs(a(k,k))<eps
        error('�������������');
    end
    r(k,k)=sqrt(a(k,k));
    u=(r(k,k)\a(k,k+1:n))';
    r(k,k+1:n)=u';
    a(k+1:n,k+1:n)=a(k+1:n,k+1:n)-u*u';
end
%r
%���������x�Ļش�����
s=r';
y=zeros(n,1);
for k=1:n
    y(k)=s(k,k)\b(k);
    for l=k+1:n
        b(l)=b(l)-y(k)*s(l,k);
    end
end
for k=n:-1:1
    x(k)=r(k,k)\y(k);
    for l=1:k-1
        y(l)=y(l)-r(l,k)*x(k);
    end
end
