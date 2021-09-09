classdef ObservedFlower
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
           f = Flower();
           [ba, bb] = deal(Bee("A"), Bee("B"));
           [ha, hb] = deal(Hummingbird("A"), Hummingbird("B"));
           
           f.addObserver(ba);
           f.addObserver(bb);
           f.addObserver(ha);
           f.addObserver(hb);
           
           %Hummingbird B decides to sleep in:
           f.removeObserver(hb);
           %A change that interests observers:
           f.open();
           f.open(); %It's already open, no change.
           %Bee A doesn't want to go to bed:
           f.removeObserver(ba);
           f.close();
           f.close(); %It's already closed, no change.
           
           f.removeObserver(bb);
           f.removeObserver(ha);
           f.open();
           f.close();
        end
    end
end