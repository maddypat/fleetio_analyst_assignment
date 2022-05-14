select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select primary_contact_id as from_field
    from "madisonflagg"."fleetio_analyst"."stg_accounts"
    where primary_contact_id is not null
),

parent as (
    select id as to_field
    from "madisonflagg"."fleetio_analyst"."stg_contacts"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test