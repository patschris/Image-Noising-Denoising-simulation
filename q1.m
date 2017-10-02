%import three images
A1 = imread('duck.jpg');
A2 = rgb2gray(imread('puppy.jpg'));
A3 = imread('wrenches.jpg');
figure('Name','Initial Images / Quantization level 128','NumberTitle','off');
subplot(231); imshow(A1), title('duck.jpg');
subplot(232); imshow(A2), title('puppy.jpg');
subplot(233); imshow(A3), title('wrenches.jpg');
%% 
% Quantization
% Level 128
Q1 = A1/2;
Q2 = A2/2;
Q3 = A3/2;
subplot(234),imshow(Q1), title('duck.jpg level 128'); 
subplot(235), imshow(Q2), title('puppy.jpg level 128');
subplot(236), imshow(Q3), title('wrenches.jpg level 128');
% Level 64
Q1 = Q1/2;
Q2 = Q2/2;
Q3 = Q3/2;
figure('Name','Quantization level 64/32','NumberTitle','off');
subplot(231),imshow(Q1), title('duck.jpg level 64'); 
subplot(232), imshow(Q2), title('puppy.jpg level 64');
subplot(233), imshow(Q3), title('wrenches.jpg level 64');
% Level 32
Q1 = Q1/2;
Q2 = Q2/2;
Q3 = Q3/2;
subplot(234),imshow(Q1), title('duck.jpg level 32'); 
subplot(235), imshow(Q2), title('puppy.jpg level 32');
subplot(236), imshow(Q3), title('wrenches.jpg level 32');
% Level 16
Q1 = Q1/2;
Q2 = Q2/2;
Q3 = Q3/2;
figure('Name','Quantization level 16 / Quantization level 16','NumberTitle','off');
subplot(231),imshow(Q1), title('duck.jpg level 16'); 
subplot(232), imshow(Q2), title('puppy.jpg level 16');
subplot(233), imshow(Q3), title('wrenches.jpg level 16');
% Level 8
Q1 = Q1/2;
Q2 = Q2/2;
Q3 = Q3/2;
subplot(234),imshow(Q1), title('duck.jpg level 8'); 
subplot(235), imshow(Q2), title('puppy.jpg level 8');
subplot(236), imshow(Q3), title('wrenches.jpg level 8');
%%
% Downsampling
D1 = downsample(A1,2);
D2 = downsample(A2,2);
D3 = downsample(A3,2);
figure('Name','Downsampled images','NumberTitle','off');
subplot(231), imshow(D1), title('downsampled duck.jpg');
subplot(232), imshow(D2), title('downsampled puppy.jpg');
subplot(233), imshow(D3), title('downsampled wrenches.jpg');
subplot(234), imshow(D1);
subplot(235), imshow(D2);
subplot(236), imshow(D3);