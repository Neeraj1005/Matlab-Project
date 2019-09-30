function b=brev(a)
for i=1:size(a,1)
    for j=1:size(a,2)
        b(i,j)=bi2de(fliplr(de2bi(a(i,j),8)));
        
        end
    end