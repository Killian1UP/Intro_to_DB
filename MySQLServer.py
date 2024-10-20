import mysql.connector
from mysql.connector import Error

def create_database(host, user, password, database_name):
    try:
        connection = mysql.connector.connect(
            host=host,
            user=user,
            password=password
        )


        if connection.is_connected():
            cursor = connection.cursor()

        cursor.execute(f"CREATE DATABASE {database_name}")
        print(f"Database '{database_name}' created successfully!")

    except Error:
        print("Error: Failing to connect to the Database!")

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()

create_database("localhost", "root", "0647509789ItM*", "alx_book_store")