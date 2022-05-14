
  create view "madisonflagg"."fleetio_analyst"."lead_drivers__dbt_tmp" as (
    with lead_and_account_info as (

    select
        l.*,
        c.account_id as account_id
    from "madisonflagg"."fleetio_analyst"."stg_leads" l
    left join "madisonflagg"."fleetio_analyst"."stg_contacts" c
        on l.id = c.lead_id

)

select
    l.id as lead_id,
    case when converted_at is not null then true else false end as is_converted,
    o.is_closed,
    o.is_won,
    l.job_title,
    l.source,
    l.industry,
    l.fleet_size,
    l.state
from lead_and_account_info l
left join "madisonflagg"."fleetio_analyst"."stg_opportunities" o on l.account_id = o.account_id
  );