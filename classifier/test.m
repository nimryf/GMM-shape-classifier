function test()
    %test classifier using confusion matrix
    imagedir = 'images/test/';
    imagelist = dir(sprintf('%s/*.gif', imagedir));
    classes = getClasses(imagedir);
    train('images/train/', 6);
    confusionMatrix = zeros(length(classes));
    for idx = 1:length(imagelist) 
        name = imagelist(idx).name;
        actual = name(1:end-7);
        predicted = classify(strcat(imagedir, name));
        index_actual = getClassIndex(actual);
        index_predicted = getClassIndex(predicted);
        confusionMatrix(index_actual, index_predicted) = 
                confusionMatrix(index_actual, index_predicted) + 1;
    end
    confusionMatrix
end