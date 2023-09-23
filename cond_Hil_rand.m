function sol =cond_Hil_rand(n)
    R=rand(n);
    H=hilb(n);
    
    sol=[cond(R),cond(H)];
end