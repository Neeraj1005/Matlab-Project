%%clc;
%%clear all
%original images
tic
a=imread('a1.bmp');b=imread('b1.bmp');c=imread('c1.png');d=imread('d1.bmp');
%generate key for all images
k1=randi([0 255], size(a,1),size(a,1));k1=uint8(k1);k2=randi([0 255], size(b,1),size(b,1));k2=uint8(k2);
k3=randi([0 255], size(c,1),size(c,1));k3=uint8(k3);k4=randi([0 255], size(d,1),size(d,1));k4=uint8(k4);
%Make one key
k12=dxr(k1,k2);k12=uint8(k12);
k34=dxr(k3,k4);k34=uint8(k34);
%xor k12 and k34 make random image using key k1,k2,k3,k4=K
K=dxr(k12,k34); K=uint8(K); %Key this will be used
%permute each images using K
A1=dxr(a,K);A1=uint8(A1);B1=dxr(b,K);B1=uint8(B1);C1=dxr(c,K);C1=uint8(C1);D1=dxr(d,K);D1=uint8(D1);
%Now make R
r1=dxr(A1,B1); r1=uint8(r1);
r2=dxr(C1,D1); r2=uint8(r2);
R=dxr(r1,r2); R=uint8(R);
%apply bit reversal
R=brev(R);
%noise images create
n1=dxr(A1,R); n1=uint8(n1);
n2=dxr(B1,R); n2=uint8(n2);
n3=dxr(C1,R); n3=uint8(n3);
n4=dxr(D1,R); n4=uint8(n4);
%shared images
s1=n1;s2=n2;s3=n3;s4=n4;
%result
figure(2);
subplot(4,4,1);imshow(a);title('original image a');
subplot(4,4,2);imshow(b);title('original image b');
subplot(4,4,3);imshow(c);title('original image c');
subplot(4,4,4);imshow(d);title('original image d');
subplot(4,4,5);imshow(A1);title('permute A1 using key');
subplot(4,4,6);imshow(B1);title('permute B1 using key');
subplot(4,4,7);imshow(C1);title('permute C1 using key');
subplot(4,4,8);imshow(D1);title('permute D1 using key');
subplot(4,4,9);imshow(R);title('Randomness');
subplot(4,4,10);imshow(s1);title('shared image S1');
subplot(4,4,11);imshow(s2);title('shared image S2');
subplot(4,4,12);imshow(s3);title('shared image S3');
subplot(4,4,13);imshow(s4);title('shared image S4');
toc