classdef SingletonPattern
    
    methods (Static)
        function printHelpMessage()
            disp('Design pattern Singleton');
            fprintf(['Intent: Ensure a class only has one instance, and provide '...
                                                'a global point of access to it.\n\n']);
        end
        
        function testSingleton()
            s = Singleton.getReference();
            result = s.getValue();
            disp(result);
            
            s2 = Singleton.getReference();
            s2.setValue(9);
            result = s2.getValue();
            disp(result);    
            
            s3 = clone(s2);
            
            clear('Singleton'); %clears persistent variable
        end
    end
end

