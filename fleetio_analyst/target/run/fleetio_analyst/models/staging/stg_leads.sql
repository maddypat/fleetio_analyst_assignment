
  create view "madisonflagg"."fleetio_analyst"."stg_leads__dbt_tmp" as (
    with final as (

    select
        *
    from "madisonflagg"."fleetio_analyst"."leads"

)

select * from final
  );