{% snapshot cistomers_snapshot %}
{{
    config(
target_schema='snapshots',
        unique_key='customer_id',
        strategy='timestamp',
        updated_at='updated_date'
    )
}}
select
     customer_id,
     customer_name,
     city,
     age,
     created_date,
     updated_date
from {{ source('RAW','CUSTOMERS') }}
{% endsnapshot %}