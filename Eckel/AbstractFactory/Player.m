classdef Player < handle
    methods (Abstract)
        interactWith(obj, obstacle);
    end
end
