classdef LastFirst < Namer
    % split last, first
    
    methods
        function obj = LastFirst(string)
            i = strfind(string, ','); % find comma
            if ~isempty(i)
                % left is last name
                obj.Last = strip(extractBetween(string, 1, i(1)-1));
                % right is first name
                obj.First = strip(extractBetween(string, i(1)+1, length(string)));
            else
                obj.Last = string; % put all in last name
                obj.First = ""; % if no comma
            end
        end
    end
end
