%实现对称正定矩阵的cholesky分解并求解线性方程组
%输入对称正定矩阵a，目标向量b
%输出（可修改）上三角矩阵R，解向量（两次回代）x
function x=cholesky_deco(a,b)
n=length(b);
%下面一部分给出cholesky分解矩阵r
r=zeros(n);
for k=1:n
    if abs(a(k,k))<eps
        error('输入非正定矩阵');
    end
    r(k,k)=sqrt(a(k,k));
    u=(r(k,k)\a(k,k+1:n))';
    r(k,k+1:n)=u';
    a(k+1:n,k+1:n)=a(k+1:n,k+1:n)-u*u';
end
%r
%以下是求解x的回代过程
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
