%不动点迭代报告误差版本
%输出迭代轨迹和误差率
function xc=fpi_(g,x0,k,r)
x=zeros(k+1,1);
e=zeros(k,1);
x(1)=x0;
output=zeros(k,3);
for i=1:k
    x(i+1)=g(x(i));
    e(i)=abs(x(i+1)-r);
    output(i,:)=[i,x(i+1),0];
    if i==1 continue;end
    output(i,:)=[i,x(i+1),e(i)/e(i-1)];
end
xc=x(k+1);
output