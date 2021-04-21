with source as (

    select * from {{ source('jaffle_shop', 'customers') }}
        where true

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name,
        email

    from source

)

select * from renamed
