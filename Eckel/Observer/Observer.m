classdef (Abstract) Observer < handle% & matlab.mixin.Heterogeneous
    properties
        StateEventListener
    end
    methods
        %Notify the Observers that a change has taken place
        updateState(obj, data)
    end   
end

