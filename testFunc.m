function testFunc(filename)

    image = rgb2gray(imread(filename));
    imshow(image);
    
    imageEdge = edge(image, 'sobel');
    imshow(imageEdge);
    
end