import mysql.connector

# Database connection details (replace with your own)
hostname = "localhost"
username = "your_username"
password = "your_password"
database = "alx_book_store"

try:
  # Connect to MySQL server
  connection = mysql.connector.connect(
      host=hostname, user=username, password=password, database=database
  )

  # Create a cursor object
  cursor = connection.cursor()

  # Fetch all table names
  cursor.execute("SHOW TABLES")
  tables = cursor.fetchall()

  # Print table names
  print("Tables in alx_book_store database:")
  for table in tables:
      print(table[0])

except mysql.connector.Error as err:
  # Handle connection or execution errors
  print(f"Error fetching tables: {err}")

finally:
  # Close the connection (if it was successful)
  if connection:
    connection.close()
    cursor.close()

print("Connection to MySQL server closed.")
