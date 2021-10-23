classdef GameElementFactory < handle
    % The Abstract Factory

    methods (Abstract)
        makePlayer();
        
        makeObstacle();
    end
end

