%���ò����������ţ����ʽ���и��ļ���
%������������һ���Ǳ�ţ��ڶ����ǵ���ֵ
%��������һ���������ʣ��������Ƕ�����������
%�����������
function xc=fpi_newton(g,x0,k,r)
x=zeros(k+1,1);
e=zeros(k,1);
x(1)=x0;
output=zeros(k,5);
for i=1:k
    x(i+1)=g(x(i));
    e(i)=abs(x(i+1)-r);
    output(i,:)=[i,x(i+1),0,0,0];
    if i==1 
        continue;
    end
    output(i,:)=[i,x(i+1),e(i)/e(i-1),e(i)/e(i-1)^2,e(i)];
end
xc=x(k+1);
output
