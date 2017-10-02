im = imread('matlab.png');
figure('Name','Matlab image','NumberTitle','off'); 
imshow(im);
% Add salt and pepper noise in matlab image
im_noise = imnoise(im, 'salt & pepper', 0.1);
% Seperate red, green and blue components
im_red = im_noise(:,:,1);
im_green = im_noise(:,:,2);
im_blue = im_noise(:,:,3);
figure('Name','Impact of salt & pepper noise in RGB','NumberTitle','off'); 
subplot(221); imshow(im_noise); title('Salt & pepper, density 0.1');
subplot(222); imshow(im_red); title('Impact in red');
subplot(223); imshow(im_green); title('Impact in green');
subplot(224); imshow(im_blue); title('Impact in blue');
% Filter the components with h
h = ones(6,6) / 36;
im1 = imfilter(im_red,h);
im2 = imfilter(im_green,h);
im3 = imfilter(im_blue,h);
figure('Name','Compare the impact of salt & pepper noise','NumberTitle','off'); 
subplot(121),imshow(cat(3,im1,im2,im3)), title('Noise in matlab.jpg');
h = ones(8,8)/64;
im1 = imfilter(im_red,h);
im2 = im_green;
im3 = im_blue;
subplot(122),imshow(cat(3,im1,im2,im3)), title('Noise only in the red vector');