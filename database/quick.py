import sqlite3

schema_file = "schema.sql"
data_file = "sample_data.sql"
output_db = "quickdocs.db"


conn = sqlite3.connect(output_db)
cursor = conn.cursor()


with open(schema_file, 'r') as f:
    schema_sql = f.read()
cursor.executescript(schema_sql)


with open(data_file, 'r') as f:
    sample_data_sql = f.read()
cursor.executescript(sample_data_sql)

conn.commit()
conn.close()

print("✅ quickdocs.db created successfully!")
