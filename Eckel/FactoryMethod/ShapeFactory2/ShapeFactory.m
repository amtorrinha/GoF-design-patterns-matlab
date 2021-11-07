classdef ShapeFactory
    methods (Abstract)
       create();
    end

    methods (Static)
        % function that controls a static map for the factories
        function result = getFactories()
            persistent factories
            if isempty(factories) %initialization
                factories = containers.Map;
            end
            result = factories;
        end
        
        function addFactory(id, factory)
            factories = ShapeFactory.getFactories();
            factories(id) = factory;
        end
        
        % A Template Method:
        function shape = createShape(id)
            factories = ShapeFactory.getFactories();
            if ~isKey(factories, id)
                % Load dinamically
                if strcmp(id, 'Circle')
                    ShapeFactory.addFactory(id, ShapeFactoryCircle());
                else
                    ShapeFactory.addFactory(id, ShapeFactorySquare());
                end
                % See if it was put in:
                factories = ShapeFactory.getFactories();
                if ~isKey(factories, id)
                    ME = MException('ShapeFactory:runTimeException', 'Bad shape creation: %s', id);
                    throw(ME);
                end
            end
            shape = factories(id).create();
        end
    end
end

