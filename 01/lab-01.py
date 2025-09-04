# lab01
import pandas as pd
import re


df_csv = pd.read_csv('datos_estructurados.csv')
print(df_csv)
print(df_csv.info())

# 
with open('datos_semi_estructurados.json', 'r') as f:
    json_data = json.load(f)
df_json = pd.json_normalize(json_data)
print(df_json)
print(df_json.info())


with open('datos_no_estructurados.txt', 'r') as f:
    texto = f.read()
patron = r"(\\w+) (?:vive|reside|está) en (\\w+) y tiene (\\d+) años"
datos_extraidos = re.findall(patron, texto)
df_texto = pd.DataFrame(datos_extraidos, columns=['Nombre', 'Ciudad', 'Edad'])
print(df_texto)

print(df_texto.info())
