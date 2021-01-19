%输入n×n的矩阵a和值向量b
%利用朴素高斯消去法（无行交换）输出解向量
%注：对于一般的问题可能不可解
function x=gauss_elimination(a,b)
n=length(a);
%下面是消去步骤：
for  j = 1 : n-1
    if  abs( a ( j , j ) ) < eps
        error('遇到零主元');
    end
    for i=j+1:n
        mult = a ( i ,j ) / a ( j , j );
        for k = j+1 : n 
            a( i , k ) = a( i , k ) - mult * a( j , k ) ;
        end
        b( i ) = b( i ) - mult * b( j ) ;
    end
end
%下面是回代步骤：
for  i = n : -1 : 1
    for j = i+1 : n
        b( i ) = b( i ) - a( i , j ) * x( j );
    end
    x( i ) = b( i ) / a( i , i );
end
