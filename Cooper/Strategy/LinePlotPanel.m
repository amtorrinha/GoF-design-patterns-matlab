classdef LinePlotPanel < PlotPanel
    properties (Access=private)
       Panel
    end
    
    methods
        function obj = LinePlotPanel(fig)
            obj.Panel = uipanel(fig);
        end
        
        function paint(obj)
           % actually draw the line Plot
           x = 1:5;
           y = [20 35 13 52 44];
           ax = axes(obj.Panel);
           lp = plot(ax, x, y);
        end
    end
end
