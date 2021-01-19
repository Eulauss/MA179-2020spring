%利用（预条件）共轭梯度法求解线性方程组
%输入：对称正定阵a,目标向量b(列向量)，预条件子M（没有的话输入单位矩阵）,初始估计x0（列向量）
%输出：解x
%用r记录按步数的误差轨迹
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