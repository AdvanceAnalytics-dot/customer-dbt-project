select 
     customer_id,
{{ uppercase('customer_name') }} AS customer_name_upper
from {{ ref('stg_customers') }}