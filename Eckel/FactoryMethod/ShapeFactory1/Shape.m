classdef Shape < matlab.mixin.Heterogeneous
    methods (Abstract)
        draw();
        
        erase();
    end
    
    methods (Static)
        function shape = factory(type)
           if strcmp(type, 'Circle')
               shape = Circle();
               return;
           end
           if strcmp(type, 'Square')
               shape = Square();
               return;
           end
           ME = MException('Shape:runTimeException', 'Bad shape creation: %s', type);
           throw(ME);
        end
    end
end
