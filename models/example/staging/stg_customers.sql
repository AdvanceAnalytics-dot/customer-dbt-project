{{ config(materialized='view') }}
select 
    customer_id,
    customer_name,
    city,
    age,
    created_date,
    updated_date
from {{ source('RAW', 'CUSTOMERS') }}