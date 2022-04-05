За основу проекта взята база данных animal.

База приведена к нормальной форме, данные перенесены в новые таблицы:
 - animal_type
 - breed
 - color
 - outcome_subtype
 - outcome_type
 - new_animals

SQL запросы расположены в файлах
 - create.sql - создание новых таблиц
 - insert.sql - заполнение данными новых таблиц

SQL запросы выполнены в файле sql_execute.py

В файле app.py создано приложение на Flask, 
которое по запросу, соответствующему animal_id, 
возвращает информацию об одном животном из БД.