select
    customer_id,
    customer_name,
    age
from {{ ref('stg_customers') }} where age < 0