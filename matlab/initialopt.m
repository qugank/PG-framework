function opt = initialopt()
%INITIAL initial the options and parameters 

    % load the learned relative importance
    load(['./matlab/ranksvmwunion','.mat'],'w');
    opt.RelativeImp = w';
    
    % the weight of label cost
    opt.C = 0.5; 
    

end

