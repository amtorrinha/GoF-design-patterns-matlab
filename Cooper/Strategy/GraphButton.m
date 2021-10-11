classdef GraphButton < handle 
    properties (Access = private)
        FileName
        Context Context
    end
    
    events
       ButtonClicked 
    end
    
    methods
        function obj = GraphButton(window, panel, fileName, context)
            obj.FileName = fileName;
            obj.Context = context;
            window.ActionListener = addlistener(obj, 'ButtonClicked', @(src,event) window.actionPerformed(src,event));
            uibutton(panel, 'Text', 'Line graph', 'Position', [10 60 91 25],...
                                            'ButtonPushedFcn', @(btn,event) notify(obj, 'ButtonClicked'));
        end
        
        function execute(obj)
            %obj.Context.setPenColor('red');
            obj.Context.setLinePlot();
            %obj.Context.readData(obj.FileName); data is hardcoded
            obj.Context.plot();
        end
    end
end

