classdef Kitty < Player
    methods (Static)
        function interactWith(obstacle)
            disp("Kitty has encountered a ");
            obstacle.action();
        end
    end
end
