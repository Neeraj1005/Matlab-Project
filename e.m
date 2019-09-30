%row encryption
function b=e(a,k1)
for i=1:size(a,1)
    for j=1:size(a,2)
        x=j+k1(i,1);
        if x<=size(a,2)
            b(i,j)=a(i,x);
        else
            b(i,j)=a(i,x-size(a,2));
        end
    end
end
 
end
%k=randi([0 255], size(a,1),1);
%k1=randi([0 255], size(a,2),1);