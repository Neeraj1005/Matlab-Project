%recover images
tic
r12=dxr(s1,s2); r12=uint8(r12);
r34=dxr(s3,s4); r34=uint8(r34);
Rnew=dxr(r12,r34); Rnew=uint8(Rnew);
Rnew=brev(Rnew);
aa=dxr(n1,Rnew); aa=uint8(aa);
bb=dxr(n2,Rnew); bb=uint8(bb);
cc=dxr(n3,Rnew); cc=uint8(cc);
dd=dxr(n4,Rnew); dd=uint8(dd);
Aorig=dxr(aa,K); Aorig=uint8(Aorig);
Borig=dxr(bb,K); Borig=uint8(Borig);
Corig=dxr(cc,K); Corig=uint8(Corig);
Dorig=dxr(dd,K); Dorig=uint8(Dorig);
%Results recover images
figure(1);
subplot(3,3,1);imshow(s1);title('shared image s1');
subplot(3,3,2);imshow(s2);title('shared image s2');
subplot(3,3,3);imshow(s3);title('shared image s3');
subplot(3,3,4);imshow(s4);title('shared image s4');
subplot(3,3,5);imshow(Rnew);title('Randomness');
subplot(3,3,6);imshow(Aorig);title('Recover image s1');
subplot(3,3,7);imshow(Borig);title('Recover image s2');
subplot(3,3,8);imshow(Corig);title('Recover image s3');
subplot(3,3,9);imshow(Dorig);title('Recover image s4');
toc