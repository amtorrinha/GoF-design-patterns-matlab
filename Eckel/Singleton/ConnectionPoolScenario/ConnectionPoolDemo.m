classdef ConnectionPoolDemo  
    methods (Static)
        function test()
            ConnectionPool.addConnections(5);
            try
                c = ConnectionPool.getConnection();
            catch ME
                if strcmp(ME.errId, 'PoolManager:Exception')
                    ME = MException('ConnectionPoolDemo:Exception', 'RuntimeException');
                    throw(ME)
                end
            end
            emptyObj = NaN;
            c.set(emptyObj);
            c.get();
            ConnectionPool.releaseConnection(c);
        end
    end
end

