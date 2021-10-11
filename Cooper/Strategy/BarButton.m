classdef BarButton < handle
    properties (Access = private)
        FileName
        Context Context
    end
    
    events
       ButtonClicked 
    end
    
    methods
        function obj = BarButton(window, panel, fileName, context)
            obj.FileName = fileName;
            obj.Context = context;
            window.ActionListener = addlistener(obj, 'ButtonClicked', @(src,event) window.actionPerformed(src,event));
            uibutton(panel, 'Text', 'Bar graph', 'Position', [10 150 91 25],...
                                'ButtonPushedFcn', @(btn,event) notify(obj, 'ButtonClicked'));
        end
        
        function execute(obj)
            %obj.Context.readData(obj.FileName); ignore for now, data is
            %hardcoded
            obj.Context.setBarPlot();
            obj.Context.plot();
        end
    end
end
