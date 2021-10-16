classdef FirstFirst < Namer
    % split first last
    
    methods
        function obj = FirstFirst(string)
            i = strfind(string, ' '); % find sep space
            if ~isempty(i)
                % left is first name
                obj.First = strip(extractBetween(string, 1, i(1)));
                % right is last name
                obj.Last = strip(extractBetween(string, i(1), length(string)));
            else
                obj.First = ""; % put all in last name
                obj.Last = string; % if no space
            end
        end
    end
end
