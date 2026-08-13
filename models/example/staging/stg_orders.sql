select
    order_id,
    customer_id,
    amount,
    order_date
from {{ source('RAW', 'ORDERS') }}