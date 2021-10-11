classdef BarPlotStrategy < PlotStrategy
    properties
        Bp BarPlotPanel
    end
    
    methods
        function obj = BarPlotStrategy()
            % define title "Line plot"
            obj.Fig = uifigure('Name', 'Bar Plot');
            obj.Bp = BarPlotPanel(obj.Fig);
        end
        
        function plot(obj, xp, yp)
            % treat data and plot with the panel
            obj.Bp.plot()
        end
    end
end

