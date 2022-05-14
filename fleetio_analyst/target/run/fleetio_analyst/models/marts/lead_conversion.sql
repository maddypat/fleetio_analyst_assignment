

  create  table "madisonflagg"."fleetio_analyst"."lead_conversion__dbt_tmp"
  as (
    select
    id as lead_id,
    source,
    converted_at::date as converted_at_day,
    date_trunc('week', converted_at)::date as converted_at_week,
    date_trunc('month', converted_at)::date as converted_at_month
from "madisonflagg"."fleetio_analyst"."stg_leads"
    where converted_at is not null
  );