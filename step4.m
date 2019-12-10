%%Step 4
imds = imageDatastore('C:\VT004\screenshots\croped');
cd 'C:\VT004\screenshots\croped' 

for i = 1:z
    img = readimage(imds,i);
end
imgs = readall(imds);
for i = 1:z
    cd 'C:\VT004\screenshots\croped' 
    I = readimage(imds, i);
    
I=rgb2gray (I);


[~, threshold] = edge(I, 'sobel');
fudgeFactor = .5;
BWs = edge(I,'sobel', threshold * fudgeFactor);

%%
se90 = strel('line', 3, 90);
se0 = strel('line', 3, 0);
%%
BWsdil = imdilate(BWs, [se90 se0]);

%%
BWdfill = imfill(BWsdil, 'holes');

    
    
    
    
    
    cd 'C:\VT004\screenshots\post_bmode_figure'
    filename = strcat('post_bmode_figure', num2str(i), '.jpg');
    imwrite(BWdfill, filename)
    i= i + 1;
end
close all;
