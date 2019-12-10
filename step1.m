%%Step 1
clc;
clear;
close all;
%%
[file,path,indx] = uigetfile( ...
{'*.mp4;*.mkv;*.avi'}, ...
   'Select a video to proceed');
%%
fullname = fullfile(path,file)
a = VideoReader(fullname); 
cd 'C:\VT004\screenshots' 
mkdir figure
cd figure
i = 1;
%h = msgbox('Wait for a while. It will take some time to complete the operation.','Success');
while hasFrame(a)
     filename = strcat('figure', num2str(i), '.jpg');
    b = readFrame(a);
    imwrite(b, filename)
i= i + 1;    
z=i-1;
end
%h = msgbox('Operation Completed','Success');
