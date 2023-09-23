function sol =equidistance_Poly_Inter(a,b,F,n,t)
    %n equidistance points
    x=linspace(a,b,n);
    y=F(x);

    %generate table
    table=zeros(n,n);
    table(:,1)=y(:);
    for j=2:n
        for i=1:n-j+1
            table(i,j)=(table(i+1,j-1)-table(i,j-1))/(x(i+j-1)-x(i));
        end
    end
    %print table
    table
    
    %evaluate result
    NewTon_Poly=1;
    sol=table(1,1);
    for j=1:n-1
        NewTon_Poly=NewTon_Poly.*(t-x(j));
        sol=sol+table(1,j+1)*NewTon_Poly;
    end
end