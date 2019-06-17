function theMean = calcMean(m)
    [rows, columns] = size(m);
    for j=1:columns
        theSum = 0;
        for i=1:rows
            theSum = theSum + m(i, j);
        end
        theMean(j) = theSum/rows;
    end
end