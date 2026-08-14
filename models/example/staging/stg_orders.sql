select
    order_id,
    customer_id,
    amount,
    order_date,
    created_date,
    updated_date
from {{ source('RAW', 'ORDERS') }}