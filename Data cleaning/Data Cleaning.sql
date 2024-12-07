-- Remove "Paris & New York" market
select *
from markets
where markets_name not in ('New York', 'Paris');

-- Convert exchange rate "USD" to "INR" for columns 'sales_amount' & 'cost_price'
SELECT 
    product_code,
    customer_code,
    market_code,
    order_date,
    sales_qty,
    CASE 
        WHEN currency = 'USD' THEN sales_amount * 84.31
        ELSE sales_amount
    END AS sales_amount,
    CASE 
        WHEN currency = 'USD' THEN 'INR'
        ELSE currency
    END AS currency,
    profit_margin_percentage,
    profit_margin,
    CASE 
        WHEN currency = 'USD' THEN cost_price * 84.31
        ELSE cost_price
    END AS cost_price
FROM 
    transactions


