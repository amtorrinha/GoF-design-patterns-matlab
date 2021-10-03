classdef (Abstract) Subject < handle
    methods
        %Tell the Subject you are interested in changes
        addObserver(obj, obs)
        
        %Tell the Subject you are no longer interested
        removeObserver(obj, obs)
        
        %Notify all the observers
        notifyObservers(obj)
    end
    
    events
        StateChanged
    end
end