import mysql.connector
from mysql.connector import Error

def create_database():
	connection = None
	cursor = None
	try:
		# Establish the database connection
		connection = mysql.connector.connect(
			host='localhost',
			user='root',
			password='T3mp54321!'
		)
		if connection.is_connected():
			cursor = connection.cursor()
			# Create the database if it doesn't exist.
			create_db_query = "CREATE DATABASE IF NOT EXISTS alx_book_store"
			cursor.execute(create_db_query)
			print("Database 'alx_book_store' created successfully!")
	except mysql.connector.Error as e:
		print(f"Error: {e}")
	finally:
		# Ensure that the cursor and connection are closed properly
		if cursor is not None:
			cursor.close()
		if connection is not None and connection.is_connected():
			connection.close()

if __name__ == "__main__":
	create_database()