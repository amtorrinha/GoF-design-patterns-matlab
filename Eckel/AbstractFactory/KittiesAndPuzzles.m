classdef KittiesAndPuzzles < GameElementFactory
    % A Concrete Factory
    
    methods (Static)
        function player = makePlayer()
            player = Kitty();
        end
        
        function obstacle = makeObstacle()
            obstacle = Puzzle();
        end
    end
end
