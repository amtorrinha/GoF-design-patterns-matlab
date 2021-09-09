classdef Main
    
    methods (Static)
        function printHelpMessage()
            fprintf(['Observer design pattern\n'...
                                   'Intent: define a one-to-many dependency between objects\n'...
                                   'so that when one object changes state, all its dependents\n'...
                                   'are notified and updated automatically.\n\n'...
                                   ''...
                                   'In this example, the Subject is the window with radio buttons,\n'...
                                   'through which you can select one of three colours.\n'...
                                   'The Observers are the remaining windows: color and list frames.\n']);
        end
        
        function testObserver()
            mainWindowSubject = Window4ObserverSubject;

            colorFrame = ColorFrameObserver(mainWindowSubject);
            %colorFrame2 = ColorFrameObserver;
            %colorFrame3 = ColorFrameObserver;

            %register with Subject
            %mainWindowSubject.addObserver(colorFrame1);
            %mainWindowSubject.addObserver(colorFrame2);
            %mainWindowSubject.addObserver(colorFrame3);

            colorList = ColorListObserver;
            mainWindowSubject.addObserver(colorList);
        end
    end
end

