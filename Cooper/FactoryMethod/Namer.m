classdef Namer < handle
    % A simple class to take a string apart into two names.
    
    properties (Access=protected)
        Last % store last name here
        First % store first name here
    end
    
    methods
        function first = getFirst(obj)
            first = obj.First; % return first name
        end
        
        function last = getLast(obj)
            last = obj.Last; % return last name
        end
    end
end

