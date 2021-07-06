classdef Printer
    %this is a prototype for a printer-spooler class
    %such that only one instance can ever exist
    
    methods
        function obj = Printer(finalize)
            persistent instanceFlag %true if 1 instance
            
            if nargin > 0 %finalize
                if strcmp(finalize, 'finalize')
                    instanceFlag = false;
                end
            else
                if isempty(instanceFlag) %initialize flag
                        instanceFlag = false;
                end

                if instanceFlag == false
                    instanceFlag = true;
                    disp('printer opened');
                else
                    ME = MException('Printer:singlePrinterOnly', 'Only one printer allowed');
                    throw(ME);
                end
            end
        end
        
    end
end

