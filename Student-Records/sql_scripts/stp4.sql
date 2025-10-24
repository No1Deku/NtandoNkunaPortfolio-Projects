# ============================================
# Step 4: Clean and Standardize Financial Data
# Purpose: Separate currency symbols from payment amounts and ensure total_payments is numeric
# ============================================

# 1. Detect currency based on symbols in total_payments
con.execute("""
UPDATE df
SET currency = CASE
    WHEN total_payments LIKE '%$%' THEN 'USD'
    WHEN total_payments LIKE '%£%' THEN 'GBP'
    WHEN total_payments LIKE '%€%' THEN 'EUR'
    WHEN total_payments LIKE '%R%' OR total_payments LIKE '%ZAR%' THEN 'ZAR'
    ELSE NULL
END
WHERE total_payments IS NOT NULL;
""")

# 2. Remove currency symbols and non-numeric characters, trim spaces
con.execute("""
UPDATE df
SET total_payments = TRIM(
    BOTH ' ' FROM 
    REGEXP_REPLACE(total_payments, '[^0-9\\.]', '', 'g')
)
WHERE total_payments IS NOT NULL;
""")