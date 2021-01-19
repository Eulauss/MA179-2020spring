%使用gauss·seidel方法迭代求解线性方程组
%将迭代轨迹记录在矩阵X的逐列中
%输入矩阵a，目标向量b，迭代次数k，输出迭代矩阵X
function X=gauss_seidel(a,b,k)
n=length(b);
X=zeros(n,k+1);
for j=2:k+1
    for u=1:n
        s1=0;
        for l=u+1:n
            s1=s1+a(u,l)*X(l,j-1);
        end
        s2=0;
        for l=1:u-1
            s2=s2+a(u,l)*X(l,j);
        end
        X(u,j)=a(u,u)\(b(u)-s1-s2);
    end
end