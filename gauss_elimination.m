%����n��n�ľ���a��ֵ����b
%�������ظ�˹��ȥ�������н��������������
%ע������һ���������ܲ��ɽ�
function x=gauss_elimination(a,b)
n=length(a);
%��������ȥ���裺
for  j = 1 : n-1
    if  abs( a ( j , j ) ) < eps
        error('��������Ԫ');
    end
    for i=j+1:n
        mult = a ( i ,j ) / a ( j , j );
        for k = j+1 : n 
            a( i , k ) = a( i , k ) - mult * a( j , k ) ;
        end
        b( i ) = b( i ) - mult * b( j ) ;
    end
end
%�����ǻش����裺
for  i = n : -1 : 1
    for j = i+1 : n
        b( i ) = b( i ) - a( i , j ) * x( j );
    end
    x( i ) = b( i ) / a( i , i );
end
