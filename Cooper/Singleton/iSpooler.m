classdef iSpooler
    %this is a prototype for a printer-spooler class
    %such that only one instance can ever exist
    
    methods (Access = private)
        function obj = iSpooler()          
        end
    end
    
    methods (Static)
        function obj = instance(finalize)
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
                    obj = iSpooler();
                else
                    obj = NaN;
                end
            end
        end
    end
end

