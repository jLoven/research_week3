%% code  %%
video = VideoReader('video.avi');
 OutVideoDir = 'IMAGESEQUENCES';
 mkdir(OutVideoDir);
    for i = 1:video.NumberOfFrames
        img = read(video,i);
        baseFileName = sprintf('%d.png', i); % e.g. "1.png"
        fullFileName = fullfile(OutVideoDir, baseFileName); 
        imwrite(img, fullFileName);
    end
