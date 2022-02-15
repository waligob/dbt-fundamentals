with payments as (

    select * from dbt-tutorial.stripe.payment

)

    select 
        id as payment_id, 
        orderid as order_id,
        amount / 100 as amount,
        paymentmethod as payment_method,
        status
    from payments
