import mysql.connector

def list_users_with_children():
    try:
        # Connect to the database
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="root",
            database="tapatappdam1"
        )
        cursor = connection.cursor(dictionary=True)

        # Query to join User and Child tables
        query = """
            SELECT 
                User.id AS user_id, 
                User.username, 
                User.email, 
                Child.id AS child_id, 
                Child.child_name
            FROM User
            LEFT JOIN RelationUserChild ON User.id = RelationUserChild.user_id
            LEFT JOIN Child ON RelationUserChild.child_id = Child.id
        """
        cursor.execute(query)
        results = cursor.fetchall()

        # Print the results
        for row in results:
            print(row)

    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        if cursor:
            cursor.close()
        if connection:
            connection.close()

def list_taps():
    try:
        # Connect to the database
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="root",
            database="tapatappdam1"
        )
        cursor = connection.cursor(dictionary=True)

        # Query to list Tap table data
        query = """
            SELECT 
                Tap.id AS tap_id,
                Tap.child_id,
                Tap.status_id,
                Tap.user_id,
                Tap.init
            FROM Tap
        """
        cursor.execute(query)
        results = cursor.fetchall()

        # Print the results
        for row in results:
            print(row)

    except mysql.connector.Error as err:
        print(f"Error: {err}")
    finally:
        if cursor:
            cursor.close()
        if connection:
            connection.close()

if __name__ == "__main__":
    list_users_with_children()
    print("\nListing Taps:")
    list_taps()
