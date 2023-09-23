function sol=ssolve(a,b,n)
    A=eye(n,n);
    A(1,2)=a;
    A(n,:)=b;
    A(n,n)=1;
    b=[1:n-2,0,n];
    sol=A\b';
end