function [e1,e2]=compare_poly_spline(m,n,a)
    %i)
    f=@(t)exp(t-5);

    %ii)
    x=linspace(4,6,m); 

    %iii) add noise values
    y=f(x);
    noise=a*(rand(1,m)-0.5);
    for i=1:m
	    y(1,i)=y(1,i)+ noise(1,i);
    end

    %iv)least squares polynomial approximation
    V=zeros(m,n+1);
    full=vander(x);
    for i=1:m
        for j=1:n+1
            V(i,j)=full(i,j);
        end
    end
    coeff=(V'*V)\(V'*y');
    
    %v)least squares spline approximation
    % n subintervals<m
    spline=spap2(n,4,x,y);

    %vi)compute error 
    err1=f(x)-polyval(coeff,x);
    err2=f(x)-spval(spline,x);
    e1=norm(err1,2);
    e2=norm(err2,2);
end