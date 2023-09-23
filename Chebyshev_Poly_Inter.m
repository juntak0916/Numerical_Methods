function sol = Chebyshev_Poly_Inter(a,b,F,n,t)
    %Chebyshev points
    x=zeros(n,1);
    for j=0:n-1
       x(j+1,1)=(b-a)/2*cos(j*pi/n)+(a+b)/2;
    end
    y=F(x);

    %generate table
    table=zeros(n,n);
    table(:,1)=y(:);
    for j=2:n
        for i=1:n-j+1
            table(i,j)=(table(i+1,j-1)-table(i,j-1))/(x(i+j-1)-x(i));
        end
    end
    table

    NewTon_Poly=1;
    sol=table(1,1);
    for j=1:n-1
        NewTon_Poly=NewTon_Poly.*(t-x(j));
        sol=sol+table(1,j+1)*NewTon_Poly;
    end
end