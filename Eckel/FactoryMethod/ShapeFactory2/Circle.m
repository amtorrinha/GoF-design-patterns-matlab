classdef Circle < Shape
    methods (Static)
        function draw()
            fprintf('Circle.draw\n');
        end
        
        function erase()
            fprintf('Circle.erase\n');
        end
    end
end
