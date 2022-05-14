select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from "madisonflagg"."fleetio_analyst"."stg_opportunities"
where id is null



      
    ) dbt_internal_test