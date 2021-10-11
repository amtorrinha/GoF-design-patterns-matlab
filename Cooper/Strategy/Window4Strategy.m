classdef Window4Strategy < handle
    
    properties (Access = private)
        Context Context
    end
    
    properties
        ActionListener
    end
    
    methods
        function obj = Window4Strategy(fileName)
            fig = uifigure('Name', 'Strategy Plots');
            panel = uipanel(fig);
            obj.Context = Context();
            BarButton(obj, panel, fileName, obj.Context);
            GraphButton(obj, panel, fileName, obj.Context);
            %additonal panel properties
        end
    end
    
    methods(Static)
       function actionPerformed(eventSource, eventData)
            disp("An action was performed!");
            eventSource.execute();
        end 
    end
end

