%reads in the image, converts it to grayscale, and converts the intensities
%from uint8 integers to doubles. (Brightness must be in 'double' format for
%computations, or else MATLAB will do integer math, which we don't want.)
dark = double(rgb2gray(imread('u2dark.png')));
image = imread('u2dark.png');

%%%%%% Your part (a) code here: calculate statistics
Minimum_vec = min(dark);
Minimum = min(Minimum_vec)
Maximum_vec = max(dark);
Maximum = max(Maximum_vec)
Mean = mean2(dark)

%%%%%% Your part (b) code here: apply offset and scaling
fixedimg = [];
minimum_offset = min(min(dark));
maximum_offset = max(max(dark));
offset = 255 / (maximum_offset-minimum_offset);
fixedimg = (dark - minimum_offset) * offset;

%displays the image
imshow(uint8(fixedimg));
figure,imhist(uint8(fixedimg));
[count,x] = imhist(image);

%%%%%% Your part (c) code here: apply the formula to increase contrast,
% and display the image
contrasted = [];
for i=1:size(dark,1)
    for j=1:size(dark,2)
        if(2*(new_img(i,j)-128)+128<0)
            contrasted(i,j)=0;
        elseif(2*(new_img(i,j)-128)+128>255)
            contrasted(i,j)=255;  
        else
            contrasted(i,j)=2*(new_img(i,j)-128)+128;
        end
    end
end
figure,imshow(uint8(contrasted));
figure,imhist(uint8(contrasted));
figure,imhist(uint8(dark));
figure,imshow(uint8(dark));