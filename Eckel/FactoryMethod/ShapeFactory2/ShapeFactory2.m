classdef ShapeFactory2
    % Polymorphic factory methods.
    
    properties
        ShArray = ["Circle", "Square", "Square", "Circle", "Circle", "Square"]
        Shapes
    end
    
    methods
        function test(obj)
            % Loop to create array of Shapes
            for n = 1:length(obj.ShArray)
                shapeObj = ShapeFactory.createShape(obj.ShArray(n));
                obj.Shapes = [obj.Shapes  shapeObj];
            end
            % Loop to test the Shapes
            for n = 1:length(obj.Shapes)
               obj.Shapes(n).draw();
               obj.Shapes(n).erase();
            end
            clear('ShapeFactory'); %clears persistent variable
        end
    end
end
