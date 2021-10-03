classdef ConnectionPool

    properties
        Pool = StaticPoolManager.Pool
    end
    
    methods
        function addConnections(obj, num)
            for n = 1: num
                obj.Pool.add(ConnectionImplementation());
            end
        end
        
        function retConnection = getConnection(obj)
            retConnection = obj.Pool.get();
        end
        
        function releaseConnection(obj, conn)
           obj.Pool.release(conn);
        end
    end
end

