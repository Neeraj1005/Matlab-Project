%double xor function
function z=dxr(x,y)
for i=1:size(x,1)
    for j=1:size(x,2)
        
a=de2bi(x(i,j),8);
b=de2bi(y(i,j),8);
    c=xor(a,b);
    d=bi2de(c);
    z(i,j)=d;
    end
end
end