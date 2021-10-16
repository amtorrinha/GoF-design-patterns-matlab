classdef Main
    % Participants:
	% Creator:			---
	% Concrete Creator:	NameFactory
	% Product:			Namer
	% Concrete Product:	FirstFirst, LastFirst
    
    methods (Static)
        function printHelpMessage()
            fprintf(['Factory Method design pattern\n'...
                                   'Intent: Define an interface for creating an object, but let\n'...
                                   'subclasses decide which class to instantiate.\n'...
                                   'Factory Method lets a class defer instantiation to subclasses.\n\n'...
                                   ''...
                                   'An operation extracts the first and last names from a text field,\n'...
                                   'depending on whether it contains a comma. If it contains a comma,\n'...
                                   'The format <last>, <first> is assumed. If it doesnt, first name\n'...
                                   'is assumed to be the 1st word and the last name the last word\n\n']);
        end
        
        function testFactoryMethod()
            Window4FactoryMethod(NamerFactory());
        end
    end
end
