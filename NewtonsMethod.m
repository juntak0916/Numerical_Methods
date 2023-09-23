function NewtonsMethod()
   x=11;
   y= x - (22.4 + 9.2*x - 12.2*x^2 + x^3)/(3*x^2-(122*x)/5+46/5);
   xprev=x;
   x=y
   e=x-xprev
   y= x - (22.4 + 9.2*x - 12.2*x^2 + x^3)/(3*x^2-(122*x)/5+46/5);
   xprev=x;
   x=y
   eprev=e;
   e=x-xprev
   e<=eprev^2
   while abs(e)>10^-5
   	 y= x - (22.4 + 9.2*x - 12.2*x^2 + x^3)/(3*x^2-(122*x)/5+46/5);
       xprev=x;
       x=y
       e<=eprev^2
       eprev=e;
       e=x-xprev
   end
end

