
  create view "madisonflagg"."fleetio_analyst"."stg_contacts__dbt_tmp" as (
    with final as (

    select
        *
    from "madisonflagg"."fleetio_analyst"."contacts"

)

select * from final
  );