function w=ahp(A)
lambda=max(eig(A));%�������ֵ
[n,~]=size(A);%����Ĵ�С
CI=(lambda-n)/(n-1);%����CI
RI=[0 0 0.58 0.94 1.12 1.24 1.32 1.41 1.45 1.51];
C=CI/RI(n);%����CR
if C>=0.1
    error('��Ҫ�����ƶ�����')
end
a=zeros(n,1);
for i=1:n
  A(:,i)=A(:,i)/norm(A(:,i),1);%�����һ��
  a=a+A(:,i);
end
w=a/norm(a,1);%������һ��