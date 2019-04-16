flower = double(rgb2gray(imread('flower.bmp')));
figure, imshow(uint8(flower));

[U, S, V] = svd(flower);
B=diag(S);
B_10 = B(1:10)

plot(1:size(B,1),B)

% We run this for different values of k
% 10,50,80,150,200
k=10
S(k+1:300,k+1:300)=0;
S(:,k+1:end)=0;
VT=V';
output=U*S*VT;
figure, imshow(uint8(output));