{{ config(materialized='table') }}
select 
    age_group,
    count(*) as customer_count 
from {{ ref('customer_age') }} group by customer_name