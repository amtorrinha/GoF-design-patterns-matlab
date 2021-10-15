classdef Main
    
    methods (Static)
        function printHelpMessage()
            fprintf(['Design pattern Strategy.\n'...
                                   'Intent: Define a family of algorithms, encapsulate each one,\n'...
                                   'and make them interchangeable. Strategy lets the algorithm\n'...
                                   'vary independently from clients that use it.\n\n'...
                                   ''...
                                   'This example is a simplified graphing program that presents data\n'...
                                   'as a line graph or a bar chart. The window that appears has two\n'...
                                   'buttons that call the two plots. Each of the buttons is a command\n'...
                                   'object that sets the correct strategy and then calls the Context’s\n'...
                                   'plot method. Method plot of Context selects one of the strategies\n'...
                                   'to be used for plotting.\n']);
        end
        
        function testStrategy()
            Window4Strategy("data.txt");
        end
    end
end
