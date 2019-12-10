cd 'C:\VT004\screenshots\croped';
srcFiles = dir('C:\VT004\screenshots\croped\*.jpg');  % the folder in which ur images exists
for i = 1 : length(b)
    srcFiles = dir('C:\VT004\screenshots\croped\*.jpg');
    w=b(i)
    filename = sprintf('figure%d.jpg',w)
    I = imread(filename);
    
    filename2 = sprintf('best frame%d.jpg',i)
    
    copyfile(filename, ['C:\VT004\BEST FRAME\' filename2])
    i= i + 1;
   
end

