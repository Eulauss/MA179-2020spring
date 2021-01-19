%���ã�Ԥ�����������ݶȷ�������Է�����
%���룺�Գ�������a,Ŀ������b(������)��Ԥ������M��û�еĻ����뵥λ����,��ʼ����x0����������
%�������x
%��r��¼�����������켣
function x=Conjugate_Gradient(A,b,M,x0)
n=length(b);
r=zeros(n,n+1);
u=0;
v=0;
r(:,1)=b-A*x0;
x=x0;
m=inv(M);
d=m*r(:,1);
z=d;
for k=1:n
    if norm(r(:,k),inf)<eps
        break;
    end
    u=r(:,k)'*z/(d'*A*d);
    x=x+u*d;
    r(:,k+1)=r(:,k)-u*A*d;
    z0=z;
    z=m*r(:,k+1);
    v=r(:,k+1)'*z/(r(:,k)'*z0);
    d=z+v*d;
end
end