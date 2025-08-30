# lab02
import sqlite3
import pandas as pd

# Conexión a base de datos
conn = sqlite3.connect("banco.db")



def extract_create_statements(db_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = cursor.fetchall()

    for table in tables:
        table_name = table[0]
        cursor.execute(f"SELECT sql FROM sqlite_master WHERE type='table' AND name='{table_name}';")
        create_stmt = cursor.fetchone()
        if create_stmt:
            print(f"-- CREATE statement for table: {table_name}")
            print(create_stmt[0])
            print()

    conn.close()

extract_create_statements('banco.db')


def describe_database(db_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Get all table names
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = cursor.fetchall()

    for table in tables:
        table_name = table[0]
        print(f"\nTable: {table_name}")
        print("-" * (len(table_name) + 8))

        # Describe columns
        cursor.execute(f"PRAGMA table_info({table_name});")
        columns = cursor.fetchall()
        print("Columns:")
        for col in columns:
            print(f"  - Name: {col[1]}, Type: {col[2]}, Not Null: {bool(col[3])}, Default: {col[4]}, Primary Key: {bool(col[5])}")

        # Describe foreign keys
        cursor.execute(f"PRAGMA foreign_key_list({table_name});")
        foreign_keys = cursor.fetchall()
        if foreign_keys:
            print("Foreign Keys:")
            for fk in foreign_keys:
                print(f"  - Column: {fk[3]} references {fk[2]}({fk[4]})")

    conn.close()

describe_database('banco.db')


# 1.
df_select = pd.read_sql_query("SELECT * FROM area", conn)


# 2.
df_select = pd.read_sql_query("SELECT COUNT(*) FROM empleado", conn)


# 3.
df_select = pd.read_sql_query("SELECT nombre, cargo FROM empleado", conn)

# 4.
df_where = pd.read_sql_query("SELECT nombre, salario FROM empleado WHERE salario > 50000", conn)

# 5.
df_groupby = pd.read_sql_query("SELECT cargo, AVG(salario) AS salario_promedio FROM empleado GROUP BY cargo", conn)

# 6. 
df_join = pd.read_sql_query("""
SELECT e.nombre, e.cargo, a.nombre AS area
FROM empleado e
JOIN area a ON e.id_area = a.id_area
""", conn)

# 7
df_cantidad_empleados_area = pd.read_sql_query("""
SELECT a.nombre AS area, COUNT(*) AS cantidad_empleados
FROM empleado e
JOIN area a ON e.id_area = a.id_area
GROUP BY a.nombre
""", conn)

# 8
df_salario_area = pd.read_sql_query("""
SELECT a.nombre AS area, AVG(e.salario) AS salario_promedio
FROM empleado e
JOIN area a ON e.id_area = a.id_area
GROUP BY a.nombre
HAVING AVG(e.salario) >55000
""", conn)


# 9 
df_tecnologia = pd.read_sql_query("""
SELECT e.nombre, e.cargo
FROM empleado e
JOIN area a ON e.id_area = a.id_area
WHERE a.nombre='Tecnologia'
""", conn)


# 10
df_area_mayor = pd.read_sql_query("""
SELECT a.nombre AS area, COUNT(e.id_empleado) AS cantidad_empleados
FROM empleado e
JOIN area a ON e.id_area = a.id_area
GROUP BY a.nombre
ORDER BY cantidad_empleados DESC
LIMIT 1
""", conn)

# 11
df_gerentes = pd.read_sql_query("SELECT nombre FROM empleado WHERE cargo = 'Gerente'", conn)

#12
df_pagos_area = pd.read_sql_query("""
SELECT a.nombre AS area, SUM(e.salario) AS total_salario
FROM empleado e
JOIN area a ON e.id_area = a.id_area
GROUP BY a.nombre
""", conn)


# 13
df_big_table = pd.read_sql_query("""
SELECT e.*, a.*
FROM empleado e
JOIN area a ON e.id_area = a.id_area
""", conn)


df_big_table.to_csv("big_table.csv",  sep='|', index=False)


# Cerrar conexión
conn.close()

