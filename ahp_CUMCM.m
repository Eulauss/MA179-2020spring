function w=ahp(A)
lambda=max(eig(A));%最大特征值
[n,~]=size(A);%矩阵的大小
CI=(lambda-n)/(n-1);%计算CI
RI=[0 0 0.58 0.94 1.12 1.24 1.32 1.41 1.45 1.51];
C=CI/RI(n);%计算CR
if C>=0.1
    error('需要重新制定矩阵')
end
a=zeros(n,1);
for i=1:n
  A(:,i)=A(:,i)/norm(A(:,i),1);%矩阵归一化
  a=a+A(:,i);
end
w=a/norm(a,1);%向量归一化