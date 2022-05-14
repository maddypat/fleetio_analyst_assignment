
  create view "madisonflagg"."fleetio_analyst"."stg_opportunities__dbt_tmp" as (
    with final as (

    select
        *
    from "madisonflagg"."fleetio_analyst"."opportunities"

)

select * from final
  );