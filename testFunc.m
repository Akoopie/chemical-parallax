function testFunc(filename, filename2)

    image = imrotate(rgb2gray(imread(filename)),90);
    image2 = imrotate(rgb2gray(imread(filename2)),90);
    
    points = detectHarrisFeatures(image);
    points2 = detectHarrisFeatures(image2);
    
    [features1,valid_points1] = extractFeatures(image,points);
    [features2,valid_points2] = extractFeatures(image2,points2);
    
    indexPairs = matchFeatures(features1,features2);
    matchedPoints1 = valid_points1(indexPairs(1:20:end,1),:);
    matchedPoints2 = valid_points2(indexPairs(1:20:end,2),:);
    
    figure; showMatchedFeatures(image,image2,matchedPoints1,matchedPoints2,'montage');
    %imshow(imageEdge);
    
end