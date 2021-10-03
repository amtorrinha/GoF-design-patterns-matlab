classdef Flower < Subject
    %FLOWER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (SetObservable, AbortSet=true)
        IsOpen
    end
    
    methods
        function obj = Flower()
            obj.IsOpen = false;
        end
        
        function addObserver(obj, obs)
            obs.StateEventListener = addlistener(obj, 'IsOpen', 'PostSet', @(src,evnt)obs.updateState(obj.IsOpen));
        end
        
        function removeObserver(obj, obs)
            disp("Deleted " + obs.Name + "'s event listener ");
            delete(obs.StateEventListener);
        end
        
        function obj = open(obj)
            disp('The Flower opened its petals');
            obj.IsOpen = true;
        end
        
        function obj = close(obj)
            disp('The Flower closed its petals');
            obj.IsOpen = false;
        end
    end
end

