clc;
clear all
%original images
a=imread('a1.bmp');b=imread('b1.bmp');c=imread('c1.png');
%generate key for all images
k1=randi([0 255], size(a,1),size(a,1));k1=uint8(k1);k2=randi([0 255], size(b,1),size(b,1));k2=uint8(k2);
k3=randi([0 255], size(c,1),size(c,1));k3=uint8(k3);
%Make one key
k12=dxr(k1,k2);k12=uint8(k12);
%xor k12 and k3 make random image using key k1,k2,k3
K=dxr(k3,k12); K=uint8(K);
%permute each images using K
A1=dxr(a,K);A1=uint8(A1);B1=dxr(b,K);B1=uint8(B1);C1=dxr(c,K);C1=uint8(C1);
%random image generate
r23=dxr(B1,C1); r23=uint8(r23);
r12=dxr(A1,B1); r12=uint8(r12); r123=dxr(r12,C1); r123=uint8(r123);
R=dxr(r123,r23); R=uint8(R);
%apply bit revesal
R=brev(R);
%noise image creation
n1=dxr(A1,R); n1=uint8(n1);
n2=dxr(B1,R); n2=uint8(n2);
n3=dxr(C1,R); n3=uint8(n3);
n4=dxr(r23,R); n4=uint8(n4); %for odd no of images
%generate share images
s1=uint8(dxr(n1,n4));
s2=n2; s3=n3; 
%result
figure(1);
subplot(3,3,1);imshow(a);title('original image a');
subplot(3,3,2);imshow(b);title('original image b');
subplot(3,3,3);imshow(c);title('original image c');
subplot(3,3,4);imshow(A1);title('permute A1 using key');
subplot(3,3,5);imshow(B1);title('permute B1 using key');
subplot(3,3,6);imshow(C1);title('permute C1 using key');
%subplot(4,4,7);imshow(R);title('Randomness');
subplot(3,3,7);imshow(s1);title('shared image S1');
subplot(3,3,8);imshow(s2);title('shared image S2');
subplot(3,3,9);imshow(s3);title('shared image S3');