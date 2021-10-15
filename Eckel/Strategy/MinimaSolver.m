classdef MinimaSolver < handle
    % The "Context" controls the strategy
    
    properties (Access=private)
        Strategy
    end
    
    methods
        function obj = MinimaSolver(strat)
            obj.Strategy = strat;
        end
        
        function retValue = minima(obj, line)
            retValue = obj.Strategy.algorithm(line);
        end
        
        function obj = changeAlgorithm(obj, newAlgorithm)
            obj.Strategy = newAlgorithm;
        end
    end
end

