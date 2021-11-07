classdef ShapeFactory
    % A simple static factory method.
    
    properties
        ShArray = ["Circle", "Square", "Square", "Circle", "Circle", "Square"]
        Shapes
    end
    
    methods
        function test(obj)
            % Loop to create array of Shapes
            for n = 1:length(obj.ShArray)
                shapeObj = Shape.factory(obj.ShArray(n));
                obj.Shapes = [obj.Shapes  shapeObj];
            end
            % Loop to test the Shapes
            for n = 1:length(obj.Shapes)
               obj.Shapes(n).draw();
               obj.Shapes(n).erase();
            end
        end
    end
end
