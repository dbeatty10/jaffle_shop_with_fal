{{ config(materialized='ephemeral') }}
/*
This table is generated by fal.
Please run this project with `fal flow` CLI tool instead of `dbt` to
get the correct results.

Specify script dependencies, this makes fal flow run in the correct order:

{{ ref('orders_daily') }}

*/

-- Check Python file for real behaviour
SELECT * FROM {{ target.schema }}.{{ model.name }}
