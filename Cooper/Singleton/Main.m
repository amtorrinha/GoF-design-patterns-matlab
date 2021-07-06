classdef Main

    methods (Static)
        function printHelpMessage()
            disp('Design pattern Singleton');
            fprintf(['Intent: Ensure a class only has one instance, and provide '...
                                                'a global point of access to it.\n\n']);
        end
        
        function testiSpooler()
            %open one printer--this should always work
            disp('Opening one spooler');
            pr1 = iSpooler.instance();

            if isa(pr1, 'iSpooler')
                disp('got 1 spooler');
            end
            
            %try to open another printer --should fail
            disp('Opening two spoolers');

            pr2 = iSpooler.instance();
            if ~isa(pr2, 'isSpooler')
                disp('no instance available');
            end

            clear('iSpooler'); %clears persistent variable
            
            %fails because constructor is privatized
            %pr3 = iSpooler();
        end
        
        function testSinglePrinter()
            %open one printer--this should always work
            disp('Opening one printer');
            try
                Printer();
            catch ME
                disp(ME.message);
            end

            %try to open another printer --should fail
            disp('Opening two printers');
            try
                Printer();
            catch ME
                disp(ME.message);
            end
            
            clear('Printer'); %clears persistent variable
        end
    end
end

