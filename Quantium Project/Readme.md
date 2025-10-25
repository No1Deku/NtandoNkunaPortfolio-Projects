    ANALYSIS Report  : Identifying the best customer-segments 
    Analytical Goal :
    -Identify the ideally segment to target for promotions for chips
    Datasets : Using QVI_purchasing_behaviour and QVI_transaction_data
    I Merged the datasets to accurately present the segments  for this project I used pandas duckdb and seaborn for data visualizations
    Initial preview of the data presented that there were two outliers that were effectively removed
    to avoid results from being skewed 
    Then using seaborn to visualize total_sales and quantity using a violion graph this presented that Large number of transactions were mostly focused on 2(Median) 1 being minimum and 5 being on the outlier end quantity wise
    Then with totalsales 
    30 is outlier large amount of transaction range between 0 & 15

    ~~~
    df = con.query("""
    WITH trans_clean AS (
        SELECT
            t.*,
            CAST(REPLACE(REGEXP_EXTRACT(LOWER(t.prod_name), '([0-9]{2,3})g'),'g','') AS INTEGER) AS size,
            TRIM(REGEXP_REPLACE(t.prod_name, '([0-9]{2,3})g', '')) AS clean_prod_name
        FROM trans t
    ), trans_with_cust AS (
        SELECT
            tc.clean_prod_name,
            tc.size,
            tc.prod_qty,
            tc.tot_sales,
            c.premium_customer,
            c.lifestage
        FROM trans_clean tc
        LEFT JOIN pb c
            ON tc.lylty_card_nbr = c.lylty_card_nbr
    ), agg_segment AS (
        SELECT
            clean_prod_name,
            size,
            premium_customer,
            Cast(SUM(prod_qty) AS INT) AS total_quantity ,
            SUM(tot_sales) AS total_sales
        FROM trans_with_cust
        GROUP BY clean_prod_name, size, premium_customer
    )
    SELECT *
    FROM agg_segment
    PIVOT (
        SUM(total_sales)
        FOR size IN (150, 160, 165, 170, 175, 180, 200, 210, 250, 300, 330, 380)
    )
    ORDER BY clean_prod_name, premium_customer
    """).df()

    ~~~
    I formulated this code segment To join the datasets and accurately present results

    Then Visualide results using a boxplot/stacked barchart and heatmap
    Then i created a visual of 