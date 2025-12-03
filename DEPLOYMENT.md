Deployment Guide
1. Вимоги

SQLite3

VS Code

Git

DB Browser for SQLite (бажано)

2. Створення БД
sqlite3 rental.db < schema/schema.sql

3. Завантаження тестових даних
sqlite3 rental.db < sample_data/seed.sql

4. Перевірка роботи
sqlite3 rental.db
SELECT * FROM Clients;
