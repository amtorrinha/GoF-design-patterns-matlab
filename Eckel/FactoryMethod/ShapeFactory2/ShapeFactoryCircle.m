classdef ShapeFactoryCircle < ShapeFactory
    methods (Static)
        function shape = create()
            shape = Circle();
        end
    end
end
