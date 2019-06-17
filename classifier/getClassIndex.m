function index = getClassIndex (class)
    
    if strcmp(class, 'Alien')
        index = 1;
    elseif strcmp(class, 'Arrow')
        index = 2;
    elseif strcmp(class, 'Butterfly')
        index = 3;
    elseif strcmp(class, 'Face')
        index = 4;
    elseif strcmp(class, 'Star')
        index = 5;
    elseif strcmp(class, 'Toonhead')
        index = 6; 
    end
end