%sharing
I1=imread('a1.bmp');
I2=imread('b1.bmp');
key=uint8(randi([0 255], 256,1));
I11=e(I1,key);
I12=e(I2,key);
R=uint8(dxr(I11,I12));
R=brev(R);
n1=uint8(dxr(I11,R));
n2=uint8(dxr(I12,R));
s1=n1;
s2=n2;