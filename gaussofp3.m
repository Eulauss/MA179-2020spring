%ʵ��project3�еĸ�˹��ȥ��
%������m�ļ���LUofp3.m
%����ϵ������A��Ŀ������b�������y
function y=gaussofp3(A,b)
n=length(b);
[L,U]=LUofp3(A);
L(n+3,n+3)=0;
U(n+3,n+3)=0;
%�ش�����
%���������y�Ļش�����
x=zeros(n,1);
for k=1:n
    x(k)=L(k,k)\b(k);
    for l=k+1:min(k+3,n)
        b(l)=b(l)-x(k)*L(l,k);
    end
end
for k=n:-1:1
    y(k)=U(k,k)\x(k);
    for l=max(k-3,1):k-1
        x(l)=x(l)-U(l,k)*y(k);
    end
end
y=y';