function graghplot(x,y)
n=max(size(x));            %�������ά��
c=newtdd(x,y,n);           %�ó���ֵϵ��
x1=min(x);
x2=max(x);
X=x1:.01:x2;                  %���ú�������
Y=nest(n-1, c, X, x);    %��ֵ
plot(X, Y, x, y, 'o');
grid on;                          %��ͼ
end