classdef Window4FactoryMethod < handle
    properties
        Factory NamerFactory
        FullNameField
        FirstNameField
        LastNameField
    end
    
    methods
        function obj = Window4FactoryMethod(factory)
            obj.Factory = factory;
            obj.makeWindow();
        end
        
        function obj = makeWindow(obj)
            fig = uifigure('Name', 'Name Divider');
            fig.Position(3:4) = [350 250];
            panel = uipanel(fig);
            % labels and text fields
            uilabel(panel, 'Text', "Enter name:", 'FontColor', 'blue', 'Position', [100 200 70 22]);
            obj.FullNameField = uieditfield(panel, 'Position', [20 170 200 22]);
            uilabel(panel, 'Text', "First name:", 'Position', [100 140 70 22]);
            obj.FirstNameField = uieditfield(panel, 'Editable', 'off', 'Position', [50 110 150 22]);
            uilabel(panel, 'Text', "Last name:", 'Position', [100 80 70 22]);
            obj.LastNameField = uieditfield(panel, 'Editable', 'off','Position', [50 50 150 22]);
            % buttons
            uibutton(panel, 'Text', 'Compute','ButtonPushedFcn', ...
                                       @(btn,event) computeAction(obj), ...
                                       'Position', [10 10 60 22]);
            uibutton(panel, 'Text', 'Clear','ButtonPushedFcn', ...
                                       @(btn,event) clearAction(obj), ...
                                       'Position', [80 10 60 22]);
            uibutton(panel, 'Text', 'Quit','ButtonPushedFcn', ...
                                       @(btn,event) obj.quitAction(fig), ...
                                       'Position', [150 10 60 22]);
        end
        
        function computeAction(obj)
            inputName = obj.FullNameField.Value;
            namer = obj.Factory.getNamer(inputName);
            obj.FirstNameField.Value = char(namer.getFirst());
            obj.LastNameField.Value = char(namer.getLast());
        end
        
        function clearAction(obj)
            obj.FullNameField.Value = "";
            obj.FirstNameField.Value = "";
            obj.LastNameField.Value = "";
        end
    end
    
    methods(Static)
       function quitAction(fig)
            close(fig);
        end 
    end
end

