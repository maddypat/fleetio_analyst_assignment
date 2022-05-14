with final as (

    select
        *
    from {{ref('accounts')}}

)

select * from final
