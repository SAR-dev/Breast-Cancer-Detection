
copyfile('C:\VT004\Best Frame\best frame1.jpg','C:\VT004\Best Frame\0.jpg')

%%
y = zeros(length(b),1)
cd 'C:\VT004\BEST FRAME\';
srcFiles = dir('C:\VT004\BEST FRAME\*.jpg');  % the folder in which ur images exists



for i = 1 : length(b)
    srcFiles = dir('C:\VT004\BEST FRAME\*.jpg');
    w=i
    filename = sprintf('best frame%d.jpg',w)
    I = imread('C:\VT004\Best Frame\0.jpg');
    I = rgb2gray (I)
    J = imread (filename)
    J = rgb2gray (J)
    a = corr2(I,J) 
    R (i,2)=a
    R (i,1)=i
    i= i + 1;
   
end
final= sort (R(:,2),'descend')

for j = 1:length (b)
    final(j,2)=j
    
    j=j+1;
end

for d = 1:length (b)
    for g = 1:length (b)
        if R (d,2)== final (g,1)
            final (g,3) = R (d,1)
            
        end
        g=g+1;
    end
    d=d+1
end



