{{ config(enabled=true) }}

{% macro calculate_tax(amount) %}
     ({ amount }) * 0.18)
{% endmacro %}