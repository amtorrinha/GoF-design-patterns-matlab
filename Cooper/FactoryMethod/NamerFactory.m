classdef NamerFactory
    % Returns an instance of LastFirst or FirstFirst
    % depending on whether a comma is found.

    methods (Static)
        function namer = getNamer(entry)
            i = strfind(entry, ',');
            if ~isempty(i)
                namer = LastFirst(entry);
            else
                namer = FirstFirst(entry);
            end
        end
    end
end

