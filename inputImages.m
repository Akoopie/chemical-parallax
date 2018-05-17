
function images = inputImages(folder)

% input image sequence
imageDir = strcat(pwd,'\', folder);
imds = imageDatastore(imageDir);

%displays images
%figure
%montage(imds.Files);

% Convert the images to grayscale.
images = cell(1, numel(imds.Files));
    for i = 1:numel(imds.Files)
        I = readimage(imds, i);
        images{i} = rgb2gray(I);
    end
    
%montage(images);
end