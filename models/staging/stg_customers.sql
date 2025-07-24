{{ config(
    schema='staging',
    materialized='table'
) }}


SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) as full_name,
    c.email
FROM
    {{ source('source_data', 'customers') }} c