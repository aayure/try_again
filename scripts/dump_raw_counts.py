import duckdb

# Connect to the database
conn = duckdb.connect('main.db') 

# Create a cursor object to execute SQL queries
cursor = conn.cursor()

# Get a list of all tables in the database
cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
tables = cursor.fetchall()

# Iterate through the tables and get the row count for each
for table in tables:
    table_name = table[0]
    cursor.execute(f"SELECT COUNT(*) FROM {table_name};")
    row_count = cursor.fetchone()[0]
    print(f"Table '{table_name}' has {row_count} rows.")




