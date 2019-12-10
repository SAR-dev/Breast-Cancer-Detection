%%Step 7
imds = imageDatastore('C:\VT004\screenshots\region_of_interest_crop');
cd 'C:\VT004\screenshots\region_of_interest_crop' 
%%

y = zeros(z,2)
zz = zeros(z,3)
zz = zeros (z,2)
t = zeros(z,1)
t = zeros(z,2)
tt = zeros(z,2)
%%
srcFiles = dir('C:\VT004\screenshots\region_of_interest_crop\*.jpg');  % the folder in which ur images exists
for i = 1 : z
    filename = sprintf('post_bmode_figure%d.jpg',i)
    I = imread(filename);
    nBlack = nnz (I);
    y(i,2)=nBlack
    y(i,1)=i
    i= i + 1;
   
end


%%
for c = 1:z
    zz(c,1)=c
    t (c,1)=c
    c=c+1;
end
%%
v= sort (y(:,2),'descend')
%%
for j = 1:z
    zz(j,2)=v(j)
    j=j+1;
end




close all;

