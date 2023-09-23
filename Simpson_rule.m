function res=Simpson_rule(f,a,b)
    res=(f(a)+4*f((a+b)/2)+f(b))*(b-a)/6;
end