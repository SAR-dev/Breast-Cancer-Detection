cd 'C:\VT004\BEST FRAME\';
srcFiles = dir('C:\VT004\BEST FRAME\*.jpg');  % the folder in which ur images exists
for i = 1 : 16
    srcFiles = dir('C:\VT004\BEST FRAME\*.jpg');
    w=final(i,3)
    filename = sprintf('best frame%d.jpg',w)
    I = imread(filename);
    
    filename2 = sprintf('result%d.jpg',i)
    
    copyfile(filename, ['C:\VT004\Result\' filename2])
    i= i + 1;
   
end

imds = imageDatastore('C:\VT004\Result');
montage (imds)