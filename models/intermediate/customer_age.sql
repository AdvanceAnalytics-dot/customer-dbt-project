{{ config(materialized='ephemeral') }}

select
    customer_id,
    customer_name,
    age,

    case 
        when age < 18 then 'under 18'
        when age between 18 and 25 then '18-2'
        when age between 27 and 40 then '27-40'
        when age > 40 and age <= 60 then '41-60'
        when age > 60 then '60+' else 'Unknown'
    end as age_group
from {{ ref('stg_customers') }} 