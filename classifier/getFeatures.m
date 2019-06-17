function [features] = getFeatures(imagePath, N)
    im = imread(imagePath);
    im = logical(im);
    
    c = chainCode(im);

    angles = c(3,:)*(2*pi/8);
    anglesFFT = fft(angles);

    absFFT = abs(anglesFFT);
    
    features = absFFT(1:N);
end