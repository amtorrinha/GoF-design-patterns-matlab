classdef KillAndDismember < GameElementFactory
    % A Concrete Factory
    
    methods (Static)
        function player = makePlayer()
            player = KungFuGuy();
        end
        
        function obstacle = makeObstacle()
            obstacle = NastyWeapon();
        end
    end
end
