clc;
clear;

image=imread('ee3tp3picture2021.jpg'); %%import the image
for i=1:1050
    for j=1:1680
        image(i,j,1)=image(i,j,1)*3.28; %%judgng the colour of red
        image(i,j,2)=image(i,j,2)*2; %%judging the colour of green
        image(i,j,3)=image(i,j,3)*1.4; %%judging the colour of blue
    end
end

imshow(image) %%show the image after judging
imwrite(image,'my_fixed_image.jpg') %% save the result

%%Cheng Fei 400228518
%%Yichen Lu 400247938