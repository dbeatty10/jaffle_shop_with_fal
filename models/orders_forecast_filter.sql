with

forecast AS (
    
    select * from {{ ref('orders_forecast') }}
    
),

final as (
    
    select
        ds as order_date,
        yhat_count as forecast_count,
        yhat_amount as forecast_amount
    from forecast
    
)

select * from final
