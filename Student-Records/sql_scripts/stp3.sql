# ============================================
# Step 3: Handle Missing or Invalid Student IDs
# Purpose: Assign unique temporary IDs for missing or invalid student_id values
# ============================================

# 1. Trim whitespace from student_id and first_name columns
con.query("UPDATE df SET student_id = TRIM(student_id), first_name = TRIM(first_name)")

# 2. Set student_id to NULL where it is empty or mistakenly captured as first_name
con.execute("""
UPDATE df
SET student_id = NULL
WHERE student_id = first_name OR student_id = ''
""")

# 3. Generate unique temporary IDs for missing student_id values
con.execute("""
UPDATE df
SET student_id = sub.new_id
FROM (
    SELECT
        rowid AS rid,
        CONCAT('TEMP-', ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) AS new_id
    FROM df
    WHERE student_id IS NULL OR TRIM(student_id) = ''
) AS sub
WHERE df.rowid = sub.rid;
""")