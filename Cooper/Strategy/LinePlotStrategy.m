classdef LinePlotStrategy < PlotStrategy 
    properties
        Lp LinePlotPanel
    end
    
    methods
        function obj = LinePlotStrategy()
            % define title "Line plot"
            obj.Fig = uifigure('Name', 'Line Plot');
            obj.Lp = LinePlotPanel(obj.Fig);
        end
        
        function plot(obj, xp, yp)
            % treat data and plot with the panel
            obj.Lp.plot()
        end
    end
end
