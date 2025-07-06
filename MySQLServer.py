#!/usr/bin/env python3
#python script to create a MySQL DB Server

import mysql.connector
from mysql.connector import errorcode

def create_database(cursor, db_name):
    try:
        cursor.execute(
            f"CREATE DATABASE IF NOT EXISTS alx_book_store"
        )
        print(f"Database '{db_name}' created successfully!")
    except mysql.connector.Error as err:
        print(f"Failed to create database '{db_name}': {err}")

def main():
    db_name = 'alx_book_store'

    try:
        cnx = mysql.connector.connect(
            user='your_username',
            password='your_password',
            host='your_host'
        )
        cursor = cnx.cursor()

        create_database(cursor, db_name)

        cursor.close()
        cnx.close()

    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Something is wrong with your user name or password")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)

if __name__ == "__main__" :
    main()

