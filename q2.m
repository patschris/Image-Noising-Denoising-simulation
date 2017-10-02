% Add Gaussian white noise of mean 0.02, 0.08 and 0.2 to the three images

% Gaussian white noise to duck.jpg
figure('Name','Add gaussian noise','NumberTitle','off');
subplot(3,4,1), imshow(A1),title('real duck.jpg');
Ig1 = imnoise(A1, 'gaussian', 0.02);
subplot(3,4,2), imshow(Ig1),title('Gaussian 0.02');
Ig2= imnoise(A1, 'gaussian', 0.08);
subplot(3,4,3), imshow(Ig2),title('Gaussian 0.08');
Ig3 = imnoise(A1, 'gaussian', 0.2);
subplot(3,4,4), imshow(Ig3), title('Gaussian 0.2');

% Gaussian white noise to puppy.jpg
subplot(3,4,5), imshow(A2),title('real puppy.jpg');
Ig4 =  imnoise(A2, 'gaussian', 0.02);
subplot(3,4,6), imshow(Ig4),title('Gaussian 0.02');
Ig5 = imnoise(A2, 'gaussian', 0.08);
subplot(3,4,7), imshow(Ig5),title('Gaussian 0.08');
Ig6 = imnoise(A2, 'gaussian', 0.2);
subplot(3,4,8), imshow(Ig6),title('Gaussian 0.2');

% Gaussian white noise to wrenches.jpg
subplot(3,4,9), imshow(A3),title('real wrenches.jpg');
Ig7 = imnoise(A3, 'gaussian', 0.02);
subplot(3,4,10), imshow(Ig7),title('Gaussian 0.02');
Ig8 = imnoise(A3, 'gaussian', 0.08);
subplot(3,4,11), imshow(Ig8),title('Gaussian 0.08');
Ig9 = imnoise(A3, 'gaussian', 0.2);
subplot(3,4,12), imshow(Ig9),title('Gaussian 0.2');

%%

% Add salt & pepper noise with density 0.02, 0.08 and 0.2 to the three images

% Salt & pepper noise to duck.jpg
figure('Name','Add salt & pepper noise','NumberTitle','off');
subplot(3,4,1), imshow(A1), title('real duck.jpg');
Isp1 = imnoise(A1, 'salt & pepper', 0.02);
subplot(3,4,2), imshow(Isp1), title('Salt & pepper 0.02');
Isp2 = imnoise(A1, 'salt & pepper', 0.08);
subplot(3,4,3), imshow(Isp2), title('Salt & pepper 0.08');
Isp3 = imnoise(A1, 'salt & pepper', 0.2);
subplot(3,4,4), imshow(Isp3), title('Salt & pepper 0.2');

% Salt & pepper to puppy.jpg
subplot(3,4,5), imshow(A2), title('real puppy.jpg');
Isp4 = imnoise(A2, 'salt & pepper', 0.02);
subplot(3,4,6), imshow(Isp4),title('Salt & pepper 0.02');
Isp5 = imnoise(A2, 'salt & pepper', 0.08);
subplot(3,4,7), imshow(Isp5), title('Salt & pepper 0.08');
Isp6 = imnoise(A2, 'salt & pepper', 0.2);
subplot(3,4,8), imshow(Isp6),title('Salt & pepper 0.2');

% Salt & pepper noise to wrenches.jpg
subplot(3,4,9), imshow(A3), title('real wrenches.jpg');
Isp7 = imnoise(A3, 'salt & pepper', 0.02);
subplot(3,4,10), imshow(Isp7),title('Salt & pepper 0.02');
Isp8 = imnoise(A3, 'salt & pepper', 0.08);
subplot(3,4,11), imshow(Isp8),title('Salt & pepper 0.08');
Isp9 = imnoise(A3, 'salt & pepper', 0.2);
subplot(3,4,12), imshow(Isp9),title('Salt & pepper 0.2');

%%

h1 = ones(5,5) / 25;
h2 = ones(9,9) / 81;

% Use filter h1 to the images with Gaussian white noise
figure('Name','Use filter h1 for denoising images with Gaussian white noise (instruction imfilter)','NumberTitle','off');
subplot(331), imshow(imfilter(Ig1,h1));
subplot(332), imshow(imfilter(Ig2,h1)),title('duck.jpg denoising with h1 filter');
subplot(333), imshow(imfilter(Ig3,h1));
subplot(334), imshow(imfilter(Ig4,h1));
subplot(335), imshow(imfilter(Ig5,h1)),title('puppy.jpg denoising with h1 filter');
subplot(336), imshow(imfilter(Ig6,h1));
subplot(337), imshow(imfilter(Ig7,h1));
subplot(338), imshow(imfilter(Ig8,h1)),title('wrenches.jpg denoising with h1 filter');
subplot(339), imshow(imfilter(Ig9,h1));

%%

% Use filter h1 to the images with salt & pepper noise
figure('Name','Use filter h1 for denoising images with salt & peper noise (instruction imfilter)','NumberTitle','off');
subplot(331), imshow(imfilter(Isp1,h1));
subplot(332), imshow(imfilter(Isp2,h1)),title('duck.jpg denoising with h1 filter');
subplot(333), imshow(imfilter(Isp3,h1));
subplot(334), imshow(imfilter(Isp4,h1));
subplot(335), imshow(imfilter(Isp5,h1)),title('puppy.jpg denoising with h1 filter');
subplot(336), imshow(imfilter(Isp6,h1));
subplot(337), imshow(imfilter(Isp7,h1));
subplot(338), imshow(imfilter(Isp8,h1)),title('wrenches.jpg denoising with h1 filter');
subplot(339), imshow(imfilter(Isp9,h1));

%%

% Use filter h2 to the images with Gaussian white noise
figure('Name','Use filter h2 for denoising images with Gaussian white noise (instruction imfilter)','NumberTitle','off');
subplot(331), imshow(imfilter(Ig1,h2));
subplot(332), imshow(imfilter(Ig2,h2)),title('duck.jpg denoising with h2 filter');
subplot(333), imshow(imfilter(Ig3,h2));
subplot(334), imshow(imfilter(Ig4,h2));
subplot(335), imshow(imfilter(Ig5,h2)),title('puppy.jpg denoising with h2 filter');
subplot(336), imshow(imfilter(Ig6,h2));
subplot(337), imshow(imfilter(Ig7,h2));
subplot(338), imshow(imfilter(Ig8,h2)),title('wrenches.jpg denoising with h2 filter');
subplot(339), imshow(imfilter(Ig9,h2));

%%

% Use filter h2 to the images with salt & pepper noise
figure('Name','Use filter h2 for denoising images with salt & pepper noise (instruction imfilter)','NumberTitle','off');
subplot(331), imshow(imfilter(Isp1,h2));
subplot(332), imshow(imfilter(Isp2,h2)),title('duck.jpg denoising with h2 filter');
subplot(333), imshow(imfilter(Isp3,h2));
subplot(334), imshow(imfilter(Isp4,h2));
subplot(335), imshow(imfilter(Isp5,h2)),title('puppy.jpg denoising with h2 filter');
subplot(336), imshow(imfilter(Isp6,h2));
subplot(337), imshow(imfilter(Isp7,h2));
subplot(338), imshow(imfilter(Isp8,h2)),title('wrenches.jpg denoising with h2 filter');
subplot(339), imshow(imfilter(Isp9,h2));


%%

% Performing median filtering 3x3 to image duck.jpg with Gaussian white noise
figure('Name','Use median filter 3x3 for denoising images (instruction medfilt2)','NumberTitle','off');
subplot(231), imshow(medfilt2(Ig1));
subplot(232), imshow(medfilt2(Ig2)), title('duck.jpg with gaussian noise');
subplot(233), imshow(medfilt2(Ig3));

% Performing median filtering 3x3 to image duck.jpg with salt & pepper noise
subplot(234), imshow(medfilt2(Isp1));
subplot(235), imshow(medfilt2(Isp2)), title('duck.jpg with salt & pepper noise');
subplot(236), imshow(medfilt2(Isp3));


%%


% Performing median filtering 8x8 to image duck.jpg with Gaussian white noise
figure('Name','Use median filter 8x8 for denoising images (instruction medfilt2)','NumberTitle','off');
subplot(231), imshow(medfilt2(Ig1, [8 8]));
subplot(232), imshow(medfilt2(Ig2, [8 8])), title('duck.jpg with gaussian noise');
subplot(233), imshow(medfilt2(Ig3, [8 8]));

% Performing median filtering 8x8 to image duck.jpg with salt & pepper noise
subplot(234), imshow(medfilt2(Isp1, [8 8]));
subplot(235), imshow(medfilt2(Isp2, [8 8])), title('filtered (8x8) duck.jpg wih salt & pepper noise (instruction medfilt2)')
subplot(236), imshow(medfilt2(Isp3, [8 8]));



%%

% Non linear 5x5 filter to image duck.jpg with Gaussian white noise (returns the minimum of every 5x5 block)
g = @(x) min(x(:));
figure('Name','Non linear 5x5 filter - returns the minimum of every 5x5 block of the image (instruction nlfilter)','NumberTitle','off');
subplot(231), imshow(nlfilter(Ig1,[5 5],g));
subplot(232), imshow(nlfilter(Ig2,[5 5],g)), title('duck.jpg wih gaussian noise');
subplot(233), imshow(nlfilter(Ig3,[5 5],g));

% Non linear 5x5 filter to image duck.jpg with salt & pepper noise (returns the minimum of every 5x5 block)
subplot(234), imshow(nlfilter(Isp1,[5 5],g));
subplot(235), imshow(nlfilter(Isp2,[5 5],g)), title('duck.jpg wih salt & pepper noise');
subplot(236), imshow(nlfilter(Isp3,[5 5],g));

% Non linear 8x8 filter to image duck.jpg with Gaussian white noise (returns the maximum of every 5x5 block)
g = @(x) max(x(:));
figure('Name','Non linear 8x8 filter - returns the maximum of every 8x8 block of the image (instruction nlfilter)','NumberTitle','off');
subplot(231), imshow(nlfilter(Ig1,[8 8],g));
subplot(232), imshow(nlfilter(Ig2,[8 8],g)), title('duck.jpg wih gaussian noise');
subplot(233), imshow(nlfilter(Ig3,[8 8],g));

% Non linear 8x8 filter to image duck.jpg with salt & pepper noise (returns the maximum of every 5x5 block)
subplot(234), imshow(nlfilter(Isp1,[8 8],g));
subplot(235), imshow(nlfilter(Isp2,[8 8],g)), title('duck.jpg wih salt & pepper noise')
subplot(236), imshow(nlfilter(Isp3,[8 8],g));


%%

% Using custom filters h1-h8 to image puppy.jpg
figure('Name','Non linear 8x8 filter - returns the maximum of every 8x8 block of filter','NumberTitle','off');
subplot(331), imshow(A2), title('puppy.jpg')
%(1)
h1 = [-1 -1 0; -1 0 1; 0 1 1];
subplot(332), imshow(imfilter(A2,h1)), title('(1)');
%(2)
h2 = [0 -1 -1; 1 0 -1; 1 1 0];
subplot(333),imshow(imfilter(A2,h2)), title('(2)');
%(3)
h3 = [-1 -1 -1; 2 2 2; -1 -1 -1];
subplot(334),imshow(imfilter(A2,h3)), title('(3)');
%(4)
h4 = [-1 2 -1;-1 2 -1;-1 2 -1];
subplot(335), imshow(imfilter(A2,h4)), title('(4)');
%(5)
h5 = [-1 -1 -1; -1 8 -1; -1 -1 -1];
subplot(336), imshow(imfilter(A2,h5)), title('(5)');
%(6)
h6 =[1 1 1; 1 1 1; 1 1 1];
subplot(337), imshow(imfilter(A2,h6)), title('(6)');
%(7)
h7 = [-1 0 1; -1 0 1; -1 0 1];
subplot(338), imshow(imfilter(A2,h7)),title('(7)');
%(8)
h8 = [0 -1 0; -1 4 -1; 0 -1 0];
subplot(339), imshow(imfilter(A2,h8)),title('(8)');