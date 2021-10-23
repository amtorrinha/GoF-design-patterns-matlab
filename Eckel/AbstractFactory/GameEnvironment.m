classdef GameEnvironment < handle
    properties (Access=private)
        Gef
        Player
        Obstacle
    end
    
    methods
        function obj = GameEnvironment(factory)
            obj.Gef = factory;
            obj.Player = factory.makePlayer();
            obj.Obstacle = factory.makeObstacle();
        end
        
        function play(obj)
            obj.Player.interactWith(obj.Obstacle);
        end
    end
end

