% Make an image black and white by using a random positive threshold up to 255
figure('Name','Black and white duck.jpg using binarization function','NumberTitle','off');
subplot(221); imshow(A1);
subplot(222) ,imshow(binarization(A1,12));
subplot(223); imshow(binarization(A1,151));
subplot(224); imshow(binarization(A1,230));
figure('Name','Black and white puppy.jpg using binarization function','NumberTitle','off');
subplot(221); imshow(A2);
subplot(222), imshow(binarization(A2,122));
subplot(223); imshow(binarization(A2,85));
subplot(224); imshow(binarization(A2,7));
figure('Name','Black and white wrenches.jpg using binarization function','NumberTitle','off');
subplot(221); imshow(A3);
subplot(222), imshow(binarization(A3,70));
subplot(223); imshow(binarization(A3,87));
subplot(224); imshow(binarization(A3,123));



%%


% Make an image black and white by using a threshold produced by automatic_thresholding function
figure('Name','Black and white images - theshold from automatic_thresholding function','NumberTitle','off');
subplot(131),imshow(binarization(A1,automatic_thresholding(A1,150)));
subplot(132),imshow(binarization(A2,automatic_thresholding(A2,180)));
subplot(133),imshow(binarization(A3,automatic_thresholding(A3,70)));