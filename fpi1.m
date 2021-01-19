function xc=fpi1(g,x0,k)
x=zeros(k+1,1);
x(1)=x0;
output=zeros(k,3);
for i=1:k
    x(i+1)=g(x(i));
    output(i,:)=[i,x(i+1),abs(x(i+1)-x(i))];
end
xc=x(k+1);
output