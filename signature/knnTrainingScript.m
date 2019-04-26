clear all
close all
clc

%initialize filter
vector = zeros(1,4);

%train first signature
for i = 11:14
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 1;
end

%train 2nd signature
for i = 15:18
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 2;
end

%train 3rd signature
for i = 19:22
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 3;
end

%train 4th signature
for i = 23:26
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 4;
end

for i = 27:30
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 5;
end
for i = 31:34
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 6;
end
for i = 35:38
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 7;
end
for i = 39:42
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 8;
end
for i = 43:46
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 9;
end
for i = 47:50
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 10;
end
for i = 51:54
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 11;
end

for i = 55:58
    image = imread(strcat(['Database/s ',num2str(i),'.jpg']));
    [ featureVector ] = FeatureExtract( image );
    vector(i - 10,:) = featureVector;
    Y(i - 10,:) = 12;
end

save('featureVectors.mat', 'vector', 'Y');

%% 
clear all
close all
clc

load('featureVectors.mat');
% x - Predictor values, specified as a numeric matrix. Each column of X 
% represents one variable, and each row represents one observation.
% y - Classification values, specified as a numeric vector, categorical vector,
% logical vector, character array, or cell array of strings, with the same
% number of rows as X. Each row of y represents the classification of the 
% corresponding row of X.
%mdl = fitcknn(vector,Y,'NumNeighbors',3,'Standardize',1);
mdl = ClassificationKNN.fit(vector,Y,'NumNeighbors',3);

% returns a matrix of scores, indicating the likelihood that a label comes 
% from a particular class.
%[label,POSTERIOR, score] = ClassificationKNN.predict(mdl,Xnew);