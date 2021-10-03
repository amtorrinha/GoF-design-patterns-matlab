classdef PoolManager < Handle
    %POOLMANAGER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Items = []
    end
    
    methods
        %function obj = PoolManager(inputArg1,inputArg2)
        %    %POOLMANAGER Construct an instance of this class
        %    %   Detailed explanation goes here
        %    obj.Property1 = inputArg1 + inputArg2;
        %end
        
        function add(obj, item)
            obj.Items = [obj.Items item];
        end
        
        function retItem = get(obj)
           for n = 1: length(obj.Items)
               pItem = obj.Items(n);
               if pItem.InUse == false
                  pItem.InUse = true;
                  retItem = pItem.Item;
               end
           end
           ME = MException('PoolManager:Exception', 'Empty Pool Exception');
           throw(ME)
        end
        
        function release(obj, item)
            for n = 1: length(obj.Items)
                pItem = obj.Items(n);
                if item == pItem.Item
                    pItem.InUse = false;
                    return
                end
            end
            ME = MException('PoolManager:FailEarly', 'RuntimeException: Item not found');
            throw(ME)
        end
    end
end

