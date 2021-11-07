classdef Shape < matlab.mixin.Heterogeneous
    methods (Abstract)
        draw();
        
        erase();
    end
end
