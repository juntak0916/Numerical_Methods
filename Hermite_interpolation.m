function pp=Hermite_interpolation(n,A)
%x0,..,xn
 x = A(1,:);
 table = zeros(2*n+2,2*n+2);
 
 for i = 0:n               
   table(2*i+1,1) = A(2,i+1);
   table(2*i+2,2) = A(3,i+1);
 end            
  
 z = zeros(1,2*n+2);
 for i = 0:n
    z(2*i+1) = x(i+1);
    z(2*i+2) = x(i+1);
    table(2*i+2,1) = table(2*i+1,1);
    if i ~= 0 
       table(2*i+1,2) = (table(2*i+1,1)-table(2*i,1))/(z(2*i+1)-z(2*i));
    end
 end
 k = 2*n+1;
 for i = 2:k
    for j = 2:i
       table(i+1,j+1) = (table(i+1,j)-table(i,j))/(z(i+1)-z(i-j+1));
    end
 end

 coefs=zeros(n);
 for i = 0:k
    coefs(i+1)=table(i+1,i+1);
 end
 pp=mkpp(x,coefs);
end
