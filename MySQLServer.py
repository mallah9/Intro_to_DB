import mysql.connector

# Database connection details (replace with your own)
hostname = "localhost"
username = "your_username"
password = "your_password"

try:
  # Connect to MySQL server
  connection = mysql.connector.connect(
      host=hostname, user=username, password=password
  )

  # Create a cursor object
  cursor = connection.cursor()

  # Create database statement (IF NOT EXISTS avoids errors if it already exists)
  create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store;"
  cursor.execute(create_db_query)

  # Commit the change
  connection.commit()

  # Print success message
  print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
  # Handle connection or execution errors
  print(f"Error creating database: {err}")

finally:
  # Close the connection (if it was successful)
  if connection:
    connection.close()
    cursor.close()

print("Connection to MySQL server closed.")
