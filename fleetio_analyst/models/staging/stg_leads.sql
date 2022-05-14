with final as (

    select
        *
    from {{ref('leads')}}

)

select * from final
