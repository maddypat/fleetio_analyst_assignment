
    
    

with child as (
    select lead_id as from_field
    from "madisonflagg"."fleetio_analyst"."stg_contacts"
    where lead_id is not null
),

parent as (
    select id as to_field
    from "madisonflagg"."fleetio_analyst"."stg_leads"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


