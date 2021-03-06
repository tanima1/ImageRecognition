function [ prediction ] = NNClassify( weights1, weights2, xTrain )
    [dataSize, featureSize] = size(xTrain);
    xTrain = [ones(dataSize, 1) xTrain];

    % Calculate Probability of each class
    [hidden, output] = ForwardPropogation(weights1, weights2, xTrain);
    
    % Find the best class label for the image
    % The best class is one with the highest probability
    [value, index] = max(output, [], 2);
    prediction = index - 1;
end

