classdef BoxObservable < Subject & handle
    
    properties
       Data 
    end
    
    methods
        function obj = BoxObservable()
            
        end
        
        function notifyObservers(obj, data)
            obj.Data = data;
            notify(obj, 'StateChanged');
        end
    end
end

