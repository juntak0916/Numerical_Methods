function sol =Newton_poly_interpolation(x,y,t)
    %generate table for divided differences
    n=length(x);
    table=zeros(n,n);
    table(:,1)=y(:);
    
    for j=2:n
        for i=1:n-j+1
            table(i,j)=(table(i+1,j-1)-table(i,j-1))/(x(i+j-1)-x(i));
        end
    end

    NewTon_Poly=1;
    sol=table(1,1);
    for j=1:n-1
        NewTon_Poly=NewTon_Poly.*(t-x(j));
        sol=sol+table(1,j+1)*NewTon_Poly;
    end
end
