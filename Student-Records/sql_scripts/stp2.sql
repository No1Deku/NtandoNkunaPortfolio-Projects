# ============================================
# Step 2: Standardize Course Names
# Purpose: Clean and unify course names to ensure consistency and avoid duplication
# ============================================

# 1. Trim whitespace from course names
con.execute("UPDATE df SET course = TRIM(course)")

# 2. Standardize course names using CASE logic
con.execute("""
UPDATE df
SET course = CASE
    -- Set empty strings to NULL
    WHEN course = '' THEN NULL
    
    -- Standardize Machine Learning variations
    WHEN course IN ('Machine Learnin', 'Machine Learning') THEN 'Machine Learning'
    
    -- Standardize Web Development variations using LIKE
    WHEN course LIKE 'Web Develpment%' 
      OR course LIKE 'Web Developmen%' 
      OR course LIKE 'Web Development%' 
      OR course LIKE 'Web Developmet%' THEN 'Web Development'
    
    -- Standardize Data Analytics / Data Analysis variations
    WHEN course LIKE 'Data Analysis%' OR course = 'Data Analytics' THEN 'Data Analytics'
    
    -- Keep original if no match
    ELSE course
END
""")
