classdef Singleton < handle
    %SINGLETON Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        SomeValue double
    end
    
    methods
        function obj = Singleton(value)
            obj.SomeValue = value;
        end
        
        function value = getValue(obj)
           value = obj.SomeValue;
        end
        
        function setValue(obj, value)
           obj.SomeValue = value;
        end
    end
    
    methods (Static)
        function obj = getReference()
            persistent instance;
            
            if isempty(instance)
                instance = Singleton(47);
            end
            obj = instance;
        end
        
    end
end

