%randomly flip the given image
function img = flipornot3h(image)
    n = uint8(rand(1)); %probability to flip the image, given 0 or 1
    img = image;
    if n == 1 %if it's a 1
        img = fliplr(image); %flip the image
    end
end