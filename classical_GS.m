%ʵ�־���Gram-Schmidt����������
%����m��n����a
%���q��r
function [q,r]=classical_GS(a)
[m,n]=size(a);
q=zeros(m,n);
r=zeros(n,n);
for j=1:n
    y=a(:,j);
    for k=1:j-1
        r(k,j)=q(:,k)'*a(:,j);
        y=y-r(k,j)*q(:,k);
    end
    r(j,j)=norm(y);
    q(:,j)=y/r(j,j);
end