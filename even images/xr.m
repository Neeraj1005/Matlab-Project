% triple xor function
function z=xr(x,y,p)
for i=1:size(x,1)
    for j=1:size(y,2)
        
        a=de2bi(x(i,j),8);
        b=de2bi(y(i,j),8);
        q=de2bi(p(i,j),8);
        c=xor(a,b);
        r=xor(c,q);
        d=bi2de(r);
        z(i,j)=d;
    end
end
end