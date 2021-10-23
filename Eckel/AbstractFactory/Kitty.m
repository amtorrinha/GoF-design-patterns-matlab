classdef Kitty < Player
    methods (Static)
        function interactWith(obstacle)
            fprintf("Kitty has encountered a %s\n", obstacle.action());
        end
    end
end
