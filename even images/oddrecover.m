%recover images
r12=dxr(s1,s2); r12=uint8(r12);
Rnew=dxr(r12,s3); Rnew=uint8(Rnew);
Rnew=brev(Rnew);
%for G2 and G3
G21=uint8(dxr(n2,Rnew));
%recover G2
G2=uint8(dxr(G21,K));
G31=uint8(dxr(n3,Rnew));
%recover G3
G3=uint8(dxr(G31,K));
%for G1
Rn23=uint8(dxr(n2,n3));
n14=uint8(dxr(n1,n4));
G11=uint8(dxr(n14,Rn23));
%recover G1 image
G1=uint8(dxr(G11,K));
%Results recover images
figure(2);
subplot(3,3,1);imshow(s1);title('shared image s1');
subplot(3,3,2);imshow(s2);title('shared image s2');
subplot(3,3,3);imshow(s3);title('shared image s3');
%subplot(3,3,5);imshow(Rnew);title('Randomness');
subplot(3,3,4);imshow(G1);title('Recover image s1');
subplot(3,3,5);imshow(G2);title('Recover image s2');
subplot(3,3,6);imshow(G3);title('Recover image s3');