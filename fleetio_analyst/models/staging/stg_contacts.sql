with final as (

    select
        *
    from {{ref('contacts')}}

)

select * from final
