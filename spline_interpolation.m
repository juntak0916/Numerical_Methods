function sol =spline_interpolation(a,b,F,n,t)
    %n equidistance points
    x=linspace(a,b,n);
    y=F(x);
    s=spline(x,y);
    sol=ppval(s,t);
end