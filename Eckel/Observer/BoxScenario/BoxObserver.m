classdef BoxObserver
    %BOXOBSERVER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Fig
        Notifier
    end
    
    methods
        function obj = BoxObserver(grid)
            obj.Notifier = BoxObservable();
            obj.makeWindow(grid);
        end
        
        function makeWindow(obj, grid)
            obj.Fig = uifigure('Name', 'Demonstrates Observer pattern');
            g = uigridlayout(obj.Fig, [grid grid]);
            
            for i = 1:grid
               for j = 1:grid
                   ocb = OCBox(i, j, g, obj.Notifier);
                   ocb.StateEventListener = addlistener(obj.Notifier, 'StateChanged', @(src,evnt)ocb.updateState(obj.Notifier.Data));
                    %FIND A WAY TO PASS THE OCBOX THAT TRIGGERS THE EVENT
                    %INSTEAD OF SRC
               end
            end
            %disp("Created figure with gridlayout");
            
        end
    end
end

