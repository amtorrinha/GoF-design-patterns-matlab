classdef Hummingbird < Observer
    %HUMMINGBIRD Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Name
    end
    
    methods
        function obj = Hummingbird(nm)
            obj.Name = nm;
        end
        
        function updateState(obj, state)
            %disp('Update State:');
            %disp(state);
            if state
                disp("Hummingbird " + obj.Name + "'s breakfast time!");
            else
                disp("Hummingbird " + obj.Name + "'s bed time!");
            end
        end
    end
end

