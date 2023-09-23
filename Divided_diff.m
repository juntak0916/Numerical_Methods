function coef=Divided_diff(x0,x1,y0,y1,dy0,dy1)
    x=[x0,x0,x1,x1];
    y=[y0,y0,y1,y1];
    ydiff=[dy0,dy1];
    n=4;
    table=zeros(n,n);
    table(:,1)=y(:);
    cnt=1;
    for j=2:n
        for i=1:n-j+1
            if(x(i+j-1)==x(i))
                table(i,j)=ydiff(1,cnt);
                cnt=cnt+1;
            else
                table(i,j)=(table(i+1,j-1)-table(i,j-1))/(x(i+j-1)-x(i));
            end
        end
    end
    coef=[table(1,1),table(1,2),table(1,3),table(1,4)];
    coef = flip(coef);
    coef(1,2) = coef(1,2) - (coef(1,1)*(x1-x0));
end