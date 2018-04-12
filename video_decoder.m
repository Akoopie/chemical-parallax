video = VideoReader('sugar_cube.mp4');
n = video.NumberOfFrames;
for i = 1:5:n
    frames = read(video,i);
    imwrite(frames,['frames/Image' int2str(i), '.jpg']);
    im(i) = image(frames);
end