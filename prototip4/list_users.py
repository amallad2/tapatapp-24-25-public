import mysql.connector

def list_users():
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="root",
            database="tapatappdam1"
        )
        cursor = connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM User")
        users = cursor.fetchall()
        for user in users:
            print(user)
    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()

if __name__ == "__main__":
    list_users()
