
    
    

select
    id as unique_field,
    count(*) as n_records

from "madisonflagg"."fleetio_analyst"."stg_opportunities"
where id is not null
group by id
having count(*) > 1


