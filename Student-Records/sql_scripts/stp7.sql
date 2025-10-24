# ============================================
# Step 7: Save Cleaned Dataset
# Purpose: Export the fully cleaned and standardized student enrollment data to a CSV for downstream use
# ============================================

# 1. Retrieve the fully cleaned table from DuckDB
final_data = con.query("SELECT * FROM df").df()

# 2. Export the cleaned data to CSV
# - Ensure UTF-8 encoding for compatibility
# - Include index=False to avoid adding an extra column
final_data.to_csv(
    "C:\\Users\\Prime\\Music\\Projects 25\\Student-Records\\Cleaned_Student_Records.csv", 
    index=False, 
    encoding='utf-8'
)
