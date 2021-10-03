classdef Bee < Observer
    %BEE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Name
    end
    
    methods
        function obj = Bee(nm)
            obj.Name = nm;
        end
        
        function updateState(obj, state)
            %disp('Update State:');
            %disp(state);
            if state
                disp("Bee " + obj.Name + "'s breakfast time!");
            else
                disp("Bee " + obj.Name + "'s bed time!");
            end
        end
    end
end

