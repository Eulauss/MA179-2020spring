function Data=gq2(A)
mult=tabulate(A(:,1));
[a,~]=size(mult);
B=zeros(a+1,1);
for k=1:a
    B(k+1,1)=B(k,1)+mult(k,2);
end


m=zeros(a,1);
n=zeros(a+1,1);
  
 for  k=1:a
   C=pi*A(B(k)+1:B(k+1),:);
   nult=tabulate(C(:,2));
   [m(k),~]=size(nult);
   n(k+1)=n(k)+m(k);
   nnult=zeros(m(k),3);
   nnult(1:m(k),1)=1/pi*nult(1:m(k),1);
   nnult(1:m(k),[2,3])=nult(1:m(k),[2,3]);
   nnult(:,4)=k+123;
   Data{k}=nnult;
 end
