import sqlite3
import json
from sql_execute import DATABASE_PATH


def get_data_from_db_dict(sql_query):
    """
    Универсальная функция для обработки sql-запроса и вывода результата в виде словаря
    :param sql_query:
    :return: executed_query
    """
    with sqlite3.connect(DATABASE_PATH) as connection:
        connection.row_factory = sqlite3.Row  # возвращает результат исполненного запроса в виде словаря
        executed_query = connection.execute(sql_query).fetchall()

    return executed_query


def search_animal_by_id(animal_id):
    """
    Производит поиск данных из базы по названию фильма, выводит один - самый свежий
    :param animal_id
    :return: dict(_)
    """
    sql_query = f"""
        SELECT
            age_upon_outcome,
            animal_id,
            name,
            date_of_birth,
            outcome_month,
            outcome_year
        FROM new_animals    
        WHERE animal_id = '{animal_id}'
        """
    executed_query = get_data_from_db_dict(sql_query)
    for _ in executed_query:
        return dict(_)



