with final as (

    select
        *
    from {{ref('opportunities')}}

)

select * from final
