classdef ColorListObserver < Observer
    
    properties
        ColorList
        CellArrayText
        QuitEventListener
    end
    
    methods
        function obj = ColorListObserver(varargin)
            obj.makeWindow();
        end
        
        function updateState(obj, color)
            obj.CellArrayText{length(obj.CellArrayText)+1} = sprintf('%s\n', color);
            obj.ColorList.Value = obj.CellArrayText;
        end
        
        function quitWindow(obj)
            close(obj.ColorList.Parent);
        end
    end
    
    methods (Access=private)
        function makeWindow(obj)
            fig = uifigure('Position', [1100 371 150 420]);
            obj.ColorList = uitextarea('Parent', fig, 'Position', [10 10 120 400]);
        end
    end
end

