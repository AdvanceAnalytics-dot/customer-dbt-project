{{ config(
    materialized='incremental',
    unique_key='order_id',
    incremental_strategy='merge'
) }}

select
    order_id,
    customer_id,
    order_date,
    amount,
    created_date,
    updated_date
from {{ ref('stg_customers') }}

{% if is_incremental() %}
where created_date >= (
    select
        Max(created_date)
        '2026-08-12'::timestamp
    )
    from {{ this }}
)
{% endif %}