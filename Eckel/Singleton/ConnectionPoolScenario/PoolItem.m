classdef PoolItem
    %POOLITEM Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        InUse = false;
        Item;
    end
    
    methods
        function obj = PoolItem(item)
            obj.Item = item;
        end
    end
end

