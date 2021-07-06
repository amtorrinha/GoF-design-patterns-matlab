classdef ColorFrameObserver < Observer
    
    properties
        Window
        QuitEventListener
    end
    
    methods
        function obj = ColorFrameObserver(varargin)
            if nargin > 0
                varargin{1}.addObserver(obj)
            end
            obj.makeWindow();
        end
        
        function updateState(obj, color)
            obj.Window.Color = color;
        end
        
        function quitWindow(obj)
            close(obj.Window);
        end
    end
    
    methods (Access=private)
        function makeWindow(obj)
            obj.Window = uifigure('Color', 'white', 'Position', [700 371 280 210]);
        end
    end
end

