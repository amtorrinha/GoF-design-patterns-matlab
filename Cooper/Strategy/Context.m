classdef Context < handle
    %CONTEXT This object selects one of the strategies to be used for plotting
    
    properties (Access=private)
        PlotStrategy
        X
        Y
    end
    
    methods
        function obj = Context()
            %obj.setLinePlot();
        end
        
        function setBarPlot(obj)
            obj.PlotStrategy = BarPlotStrategy();
        end
        
        function setLinePlot(obj)
            obj.PlotStrategy = LinePlotStrategy();
        end
        
        function plot(obj)
           obj.PlotStrategy.plot(obj.X, obj.Y); 
        end
        
        function setPenColor(color)
           obj.PlotStrategy.setPenColor(color); 
        end
        
        function readData(fileName)
           % TODO if needed 
        end
    end
end

