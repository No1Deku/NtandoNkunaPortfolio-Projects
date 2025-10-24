# ============================================
# Step 6: Standardize Enrollment Dates
# Purpose: Resolve inconsistencies in enrollment_date and convert all dates to DD-MM-YYYY format
# ============================================

# 1. Set invalid or placeholder dates (e.g., 'NA') to NULL
con.execute("UPDATE df SET enrollment_date = NULL WHERE enrollment_date LIKE '%NA%'")

# 2. Trim whitespace from enrollment_date
con.execute("""
UPDATE df
SET enrollment_date = TRIM(enrollment_date)
WHERE enrollment_date IS NOT NULL AND enrollment_date <> '';
""")

# 3. Convert dates in format 'DD-Mon-YY' (e.g., 12-Jan-23) to 'DD-MM-YYYY'
con.execute("""
UPDATE df
SET enrollment_date = STRFTIME(STRPTIME(enrollment_date, '%d-%b-%y'), '%d-%m-%Y')
WHERE REGEXP_MATCHES(enrollment_date, '^[0-9]{2}-[A-Za-z]{3}-[0-9]{2}$');
""")

# 4. Convert dates in format 'YYYY-MM-DD' (e.g., 2023-01-12) to 'DD-MM-YYYY'
con.execute("""
UPDATE df
SET enrollment_date = STRFTIME(STRPTIME(enrollment_date, '%Y-%m-%d'), '%d-%m-%Y')
WHERE REGEXP_MATCHES(enrollment_date, '^20[0-9]{2}-[0-9]{2}-[0-9]{2}$');
""")

# 5. Convert dates in format 'DD-MM-YY' (e.g., 12-01-23) to 'DD-MM-YYYY'
con.execute("""
UPDATE df
SET enrollment_date = STRFTIME(STRPTIME(enrollment_date, '%d-%m-%y'), '%d-%m-%Y')
WHERE REGEXP_MATCHES(enrollment_date, '^[0-9]{2}-[0-9]{2}-[0-9]{2}$');
""")