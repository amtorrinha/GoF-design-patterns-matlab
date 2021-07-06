classdef Window4ObserverSubject < Subject
    
    properties
        %ObserversList
        Bgroup
        Fig
    end
    
    events
       QuitEvent 
    end
    
    methods
        function obj = Window4ObserverSubject()
            obj.makeWindow();
        end
        
        function addObserver(obj, obs)
            %obj.ObserversList = [obj.ObserversList obs];
            
            %add listener observer to the subject event StateChanged
            obs.StateEventListener = addlistener(obj, 'StateChanged', @(src,evnt)obs.updateState(obj.Bgroup.SelectedObject.Text));
            obs.QuitEventListener = addlistener(obj, 'QuitEvent', @(src,evnt)obs.quitWindow());
        end
    end
    
    methods (Access=private)
        function makeWindow(obj)
            obj.Fig = uifigure('Position', [200 342 175 225]);

            %Color radio buttons       
            obj.Bgroup = uibuttongroup(obj.Fig, 'Position', [40 113 100 90], 'SelectionChangedFcn',...
                                        @(bgroup, event) notify(obj, 'StateChanged'));
            %@(bgroup, event) notifyObservers(bgroup.SelectedObject.Text));
            uiradiobutton(obj.Bgroup, 'Position', [10 150 91 15], 'Text', 'None', 'Visible', 0);
            uiradiobutton(obj.Bgroup, 'Position', [10 60 91 15], 'Text', 'Red');
            uiradiobutton(obj.Bgroup, 'Position', [10 38 91 15], 'Text', 'Green');
            uiradiobutton(obj.Bgroup, 'Position', [10 16 91 15], 'Text', 'Blue');

            %Quit button
            uibutton('Parent', obj.Fig, 'Position',[40, 50, 100, 22], 'Text', 'Quit',...
                        'ButtonPushedFcn', @(btnQuit,event) notify(obj, 'QuitEvent'));
            addlistener(obj, 'QuitEvent', @(src,evnt)obj.quitWindow());
            
            %function notifyObservers(color)
            %    %New notification
            %    for n = 1: length(obj.ObserversList)
            %        obj.ObserversList(n).writeColorOnWindow(color);
            %    end
            %end
        end  
        function quitWindow(obj)
            %Closing all windows;
            close(obj.Fig);
            %for n = 1: length(obj.ObserversList)
            %    try
            %        obj.ObserversList(n).quitWindow();
            %    catch ME
            %        fprintf(['Figure already closed. Error: ', ME.message, '\n']);
            %    end
            %end
            %end
        end
    end
end

