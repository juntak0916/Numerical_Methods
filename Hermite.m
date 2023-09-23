function s=Hermite(A,n)
    coefs=zeros(n-1,4);
    for i=1:n-1
        x0=A(1,i);
        x1=A(1,i+1);
        y0=A(2,i);
        y1=A(2,i+1);
        dy0=A(3,i);
        dy1=A(3,i+1);

        coefs(i,:)=Divided_diff(x0,x1,y0,y1,dy0,dy1);
    end
    s=mkpp(A(1,:),coefs);
end