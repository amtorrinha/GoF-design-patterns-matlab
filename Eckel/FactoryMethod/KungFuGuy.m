classdef KungFuGuy < Player
    methods (Static)
        function interactWith(obstacle)
            disp("KungFuGuy now battles a ");
            obstacle.action();
        end
    end
end
