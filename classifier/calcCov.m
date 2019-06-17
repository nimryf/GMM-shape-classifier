function covMatrix = calcCov(vectorMatrix)
    meanMatrix = calcMean(vectorMatrix);
    diffMatrix = vectorMatrix - meanMatrix;
    rows = length(diffMatrix);
    covMatrix = transpose(diffMatrix) * diffMatrix * (1/(rows-1));
end