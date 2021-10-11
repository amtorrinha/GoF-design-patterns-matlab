classdef BarPlotPanel < PlotPanel
    properties (Access=private)
       Colors
       Panel
    end
    
    methods
        function obj = BarPlotPanel(fig)
            obj.Colors = 'red';
            % setup other bar colors
            obj.Panel = uipanel(fig);
        end
        
        function paint(obj)
           % actually draw the Bar Plot
           x = 1:5;
           y = [20 35 13 52 44];
           ax = axes(obj.Panel);
           bp = bar(ax, x, y);
        end
    end
end
