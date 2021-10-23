classdef KungFuGuy < Player
    methods (Static)
        function interactWith(obstacle)
            fprintf("KungFuGuy now battles a %s\n", obstacle.action());
        end
    end
end
