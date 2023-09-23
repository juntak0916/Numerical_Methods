function bisection(a,b)
   c=a+(b-a)/2
   if(f(a)*f(c)<0) b=c;
   else a=c;
   end
   cprev=c;
   c=a+(b-a)/2
   E=c-cprev
   while abs(E) > 10^-5
       if(f(a)*f(c)<0)b=c;
       else a=c;
       end
       cprev=c;
       c=a+(b-a)/2
       E=c-cprev
   end
end

function sol= f(x)
  sol = 22.4 + 9.2*x - 12.2*x^2 + x^3;
end