import sqlite3
from os.path import isfile

DATABASE_PATH = "animal.db"
SQL_QUERY_FILE_PATH = "create.sql"
SQL_QUERY_INSERT_FILE_PATH = "insert.sql"


def get_sql_query(file_name):
    """
    Получает последовательность SQL запросов из файла.
    :param file_name:
    :return: query
    """

    query = ""
    if isfile(file_name):
        with open(file_name) as file:
            query = file.read()
    return query


def main():
    """
    Выполняет последовательность SQL запросов для нормализации базы данных.
    :return:
    """
    with sqlite3.connect("animal.db") as connection:
        cursor = connection.cursor()
        query = get_sql_query(SQL_QUERY_FILE_PATH)
        cursor.executescript(query)

        query_insert = get_sql_query(SQL_QUERY_INSERT_FILE_PATH)
        cursor.executescript(query_insert)


if __name__ == "__main__":
    main()
