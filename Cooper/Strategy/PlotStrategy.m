classdef (Abstract) PlotStrategy < handle
    %PLOTSTRATEGY Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Fig
    end
    
    methods
        function obj = PlotStrategy()
            % define title
            %obj.Fig = uifigure();
            % define width and height
            % define color
            % add window listener
        end
        
        function setSize(obj, dimensions)
            % set width and height
        end
        
        function setPenColor(obj, color)
            obj.Color = color;
        end
        
        function findBounds(obj)
           % find bounds
        end
    end
    
    methods (Abstract)
        plot(obj, xp, yp)
    end
end

