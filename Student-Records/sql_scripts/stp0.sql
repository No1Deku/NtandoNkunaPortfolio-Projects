# ============================================
# Step 0: Load, Preview, and Parse Data into DuckDB
# Purpose: Load unclean student enrollment CSV, inspect data, and prepare for SQL transformations
# ============================================

import pandas as pd
import duckdb as db

# 1. Load CSV into a Pandas DataFrame
# - Encoding ISO-8859-1 ensures special characters are handled
data = pd.read_csv(
    "C:\\Users\\Prime\\Music\\Projects 25\\Student-Records\\Unclean_Dataset_1.csv", 
    encoding='ISO-8859-1'
)

# 2. Standardize column names: strip whitespace and convert to lowercase
data.columns = [col.strip().lower() for col in data.columns]

# 3. Preview first few rows to validate data load
print("=== Data Preview ===")
print(data.head())

# 4. Connect to DuckDB (in-memory by default)
con = db.connect()

# 5. Create or replace DuckDB table for SQL transformations
con.execute("CREATE OR REPLACE TABLE df AS SELECT * FROM data")
