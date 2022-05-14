
  create view "madisonflagg"."fleetio_analyst"."stg_accounts__dbt_tmp" as (
    with final as (

    select
        *
    from "madisonflagg"."fleetio_analyst"."accounts"

)

select * from final
  );