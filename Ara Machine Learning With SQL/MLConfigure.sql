/*
Code for Creating  Resource 

*/

--resources allocated to the default pool for the server.
SELECT * FROM sys.resource_governor_resource_pools WHERE name = 'default' 
-- resources allocated to the default external resource pool.
SELECT * FROM sys.resource_governor_external_resource_pools WHERE name = 'default'  
--Take a look at your resource groups
SELECT * FROM sys.resource_governor_workload_groups;  
--Review the resource pools
SELECT * FROM sys.resource_governor_external_resource_pools;
--Affinity groups
SELECT * FROM sys.resource_governor_external_resource_pool_affinity;
 

ALTER RESOURCE POOL "default" WITH (max_memory_percent = 60);  
ALTER EXTERNAL RESOURCE POOL "default" WITH (max_memory_percent = 40); 
ALTER RESOURCE GOVERNOR reconfigure;  
go

--creating a new EXTERNAL user-defined external resource pool called R_resources.
CREATE EXTERNAL RESOURCE POOL ML_Resources WITH (max_memory_percent = 40);  

--Create a workload group for the resource pool
CREATE WORKLOAD GROUP RworkloadGroup WITH (importance = medium) USING "default", EXTERNAL ML_resources";


--For each resource pool, define the type of requests that should be assigned to the pool

USE master  
GO  

CREATE FUNCTION is_ML_app()  
RETURNS sysname  
WITH schemabinding  
AS  
BEGIN  
    IF program_name() in ('Microsoft R Host', 'RStudio', 'python') RETURN 'MLworkloadGroup';  
    RETURN 'default'  
    END;  
GO  
 
ALTER RESOURCE GOVERNOR WITH  (classifier_function = dbo.is_ML_app);  
ALTER RESOURCE GOVERNOR   reconfigure;  
go  
