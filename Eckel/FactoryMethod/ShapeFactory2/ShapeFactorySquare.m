classdef ShapeFactorySquare < ShapeFactory
    methods (Static)
        function shape = create()
            shape = Square();
        end
    end
end
