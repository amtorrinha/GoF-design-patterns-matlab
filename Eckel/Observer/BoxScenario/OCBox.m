classdef OCBox < Observer
    
    properties
        X int32
        Y int32
        Panel
        Colors = ["red", "green", "blue", "cyan", "magenta", "yellow", "black", "white"]
        CColor = 'red';
    end
    
    methods
        function obj = OCBox(x, y, gridLayout, notifier)
            obj.X = x;
            obj.Y = y;
            obj.Panel = uipanel(gridLayout, 'ButtonDownFcn', @(uip,evnt)notifier.notifyObservers(obj));
            obj.CColor = obj.newColor();
            obj.Panel.BackgroundColor = obj.CColor;
        end
        
        function updateState(obj, data)
            if obj.nextTo(data)
               obj.CColor = data.CColor;
               obj.repaint();
            end
        end
    end
    
    methods (Access=private)
       function retColor = newColor(obj)
            retV = obj.Colors(randi(numel(obj.Colors)));
            retColor = retV;
       end
       
       function isNextTo = nextTo(obj, b)
           isNextTo = abs(obj.X - b.X) <= 1 & abs(obj.Y - b.Y) <= 1;
       end
       
       function repaint(obj)
           obj.Panel.BackgroundColor = obj.CColor;
       end
      
    end
end

