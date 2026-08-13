select
    order_id,
    amount,
    {{ calculate_tax('amount') }} as tax_amount
from {{ ref('stg_orders') }}