%实现project3中的高斯消去法
%依赖于m文件：LUofp3.m
%输入系数矩阵A，目标向量b，输出解y
function y=gaussofp3(A,b)
n=length(b);
[L,U]=LUofp3(A);
L(n+3,n+3)=0;
U(n+3,n+3)=0;
%回代步骤
%以下是求解y的回代过程
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