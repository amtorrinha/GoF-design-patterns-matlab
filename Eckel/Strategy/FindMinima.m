classdef FindMinima < handle
    % The strategy interface
    
    methods (Abstract)
        algorithm(obj, line)
        % Line is a sequence of points
    end
end
