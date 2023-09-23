function SecantMethod(xn_1,xn,E)
   y=xn-f(xn)*(xn-xn_1)/(f(xn)-f(xn_1));
   e=xn-xn_1
   xn_1=xn;
   xn=y
   while(abs(e)>=E)
       y=xn-f(xn)*(xn-xn_1)/(f(xn)-f(xn_1));
       e=xn-xn_1
       xn_1=xn;
       xn=y
   end
end
function sol= f(x)
  sol = 22.4 + 9.2*x - 12.2*x^2 + x^3;
end
