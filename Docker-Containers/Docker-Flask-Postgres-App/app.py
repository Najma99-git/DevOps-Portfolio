from flask import Flask
import psycopg2

app = Flask(__name__)

def get_db_connection():
    connection = psycopg2.connect(
        host="postgres-db",
        database="postgres",
        user="postgres",
        password="password"
    )
    return connection


def create_table():
    conn = get_db_connection()
    cursor = conn.cursor()

    cursor.execute("""
        CREATE TABLE IF NOT EXISTS users (
            id SERIAL PRIMARY KEY,
            name VARCHAR(100),
            email VARCHAR(100)
        )
    """)

    conn.commit()
    cursor.close()
    conn.close()



@app.route("/")
def home():
    return "Docker Flask + PostgreSQL Running!"


@app.route("/db")
def database_test():
    conn = get_db_connection()
    cursor = conn.cursor()

    cursor.execute("SELECT version();")
    result = cursor.fetchone()

    cursor.close()
    conn.close()

    return f"Database connected: {result}"


@app.route("/add-user")
def add_user():
    conn = get_db_connection()
    cursor = conn.cursor()

    cursor.execute(
        """
        INSERT INTO users (name, email)
        VALUES (%s, %s)
        """,
        ("Najma", "najma@example.com")
    )

    conn.commit()

    cursor.close()
    conn.close()

    return "User added successfully!"


create_table()

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
