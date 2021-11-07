classdef Square < Shape
    methods (Static)
        function draw()
            fprintf('Square.draw\n');
        end
        
        function erase()
            fprintf('Square.erase\n');
        end
    end
end

