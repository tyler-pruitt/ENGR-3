load image_morpho.mat

%loop over the odd rows
for i = 1:2:853
    %loop over even columns
    for j = 2:2:1279
        %for every odd row and even column
        G(i,j) = (G(i,j-1) + G(i,j+1))/2;
    end
    %loop over odd columns
    for j = 3:2:1280
        %for every odd row and odd column
        B(i,j) = (B(i,j-1) + B(i,j+1))/2;
    end
end

%loop over the even rows
for i = 2:2:853
    %loop over even columns
    for j = 2:2:1279
        %for every even row and even column
        B(i,j) = (B(i,j-1) + B(i,j+1))/2;
    end
    %loop over odd columns
    for j = 3:2:1280
        %for every even row and odd column
        G(i,j) = (G(i,j-1) + G(i,j+1))/2;
    end
end

%display image
img = cat(3,R,G,B);
image(img)