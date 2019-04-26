clear all;
close all;
clc;

image = imread('Database/s 32.jpg');
figure(1),imshow(image);
title('Original image')

%Initialize KNN model
load('featureVectors.mat');
mdl = ClassificationKNN.fit(vector,Y,'NumNeighbors',3);

%initialize feature vector

[ featureVector ] = FeatureExtract( image );
    % returns a matrix of scores, indicating the likelihood that a label comes 
    % from a particular class.
    [label] = predict(mdl,featureVector);
    

    %Eccentricity is the ratio between the major and minor axis
    %0 if it is a perfect circle, 1 if its a parabola
    %between 0 & 1 if it is an ellipse
    %parabola if it is greater than 1
