classdef (Abstract) Subject < handle
    methods
        %Tell the Subject you are interested in changes
        addObserver(obj, obs)
    end   
    events
        StateChanged
    end
end