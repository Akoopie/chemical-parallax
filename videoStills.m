%This function can be used to extract frames from a video.
%Note that a "frames" folder should be created in the active directory.

function videoStills(filename,freq_frames) %Creates the function with 2 parameters: filename (should be in single quotes) and the frequency of frames generated.

    video = VideoReader(filename); %Creates variable 'video' to load in file.
    n = video.NumberOfFrames; %This calculates the total number of frames.

    for i = 1:freq_frames:n %This loop extracts stills starting from frame 1 up to the final frame, with the frequency of frames written set by the user.
        frames = read(video,i); %Variable set at current frame in the loop.
        imwrite(frames,['frames/Image' int2str(i), '.jpg']); %Writes the image as a jpg files. Needs to be a string so it can be saved.
        im(i) = image(frames); %Displays the frames extracted in Matlab. This is optional.
        end

end