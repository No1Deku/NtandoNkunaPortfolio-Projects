# ============================================
# Step 5: Standardize Age and Gender
# Purpose: Ensure age is numeric and gender is consistent ('M'/'F'), handle swapped or combined values
# ============================================

# 1. Remove any asterisks (*) from age
con.execute("UPDATE df SET age = REPLACE(age, '*', '')")

# 2. Set empty age values to NULL
con.execute("UPDATE df SET age = NULL WHERE age = ''")

# 3. Correct swapped or combined age/gender values
con.execute("""
UPDATE df
SET
    age = CASE
        -- Swap age/gender if age contains 'M' or 'F' but gender is numeric
        WHEN age IN ('M', 'F') AND gender NOT IN ('M', 'F') THEN gender
        
        -- Extract age from combined gender-age field (e.g., 'M24')
        WHEN age IS NULL AND LENGTH(gender) > 1 THEN RIGHT(gender, 2)
        
        ELSE age
    END,
    
    gender = CASE
        -- Swap gender if age contains 'M' or 'F'
        WHEN age IN ('M', 'F') AND gender NOT IN ('M', 'F') THEN age
        
        -- Extract gender from combined gender-age field (e.g., 'M24')
        WHEN age IS NULL AND LENGTH(gender) > 1 THEN LEFT(gender, 1)
        
        ELSE gender
    END
WHERE age IS NOT NULL OR gender IS NOT NULL;
""")
