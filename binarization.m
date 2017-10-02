function [ Newimage ] = binarization( image, threshold_value )
 threshold_value = threshold_value/255; % normalization to [0,1]
 Newimage = im2bw(image,threshold_value);
end