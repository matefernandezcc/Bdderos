# TP Bases de Datos – Importar BDDEROS.sql (esquema BDDERO)

Este repositorio contiene el script `BDDEROS.sql`, que corresponde a la última versión del modelo transaccional y crea/carga el esquema `BDDERO` (nombre del grupo) según la consigna del TP 2C2025.

## Prerrequisitos
- SQL Server 2019 (o compatible) y SQL Server Management Studio (SSMS) o `sqlcmd`.
- Permisos para crear objetos en la base `GD2C2025`.

## 1️⃣ Crear (si es necesario) la base de datos
En SSMS o cualquier cliente SQL, ejecutar:
```sql
IF DB_ID('GD2C2025') IS NULL 
    CREATE DATABASE GD2C2025;
```

## 2️⃣ Ejecutar BDDEROS.sql con SSMS
1. Abrir SSMS y conectarse al servidor de SQL Server.
2. Seleccionar la base `GD2C2025` en el dropdown de bases o incluir al inicio del script:
```sql
USE GD2C2025;
GO
```
3. Abrir el archivo `BDDEROS.sql` desde File > Open > File...
4. Ejecutar el script (F5) y esperar a que finalice sin errores.

## 3️⃣ Ejecutar BDDEROS.sql con sqlcmd (alternativa por consola)
- Autenticación SQL Server (Linux/WSL ejemplo):
```bash
/opt/mssql-tools/bin/sqlcmd \
  -S localhost,1433 \
  -U sa -P 'TU_PASSWORD' \
  -d GD2C2025 \
  -i BDDEROS.sql \
  -a 32767 -b -o resultado_output.txt
```
- Autenticación de Windows (Windows ejemplo):
```bash
sqlcmd -S localhost\SQLSERVER2019 -E -d GD2C2025 -i BDDEROS.sql -a 32767 -b -o resultado_output.txt
```

## 4️⃣ Verificación post-ejecución
Comprobar que el esquema `BDDERO` y sus tablas fueron creados:
```sql
-- Verificar esquema
SELECT name FROM sys.schemas WHERE name = 'BDDERO';

-- Listar tablas del esquema
SELECT s.name AS schema_name, t.name AS table_name
FROM sys.tables t
JOIN sys.schemas s ON s.schema_id = t.schema_id
WHERE s.name = 'BDDERO'
ORDER BY t.name;
```

## Notas
- El script debe ejecutarse sin errores en SQL Server 2019.
- Si `BDDEROS.sql` ya incluye `USE GD2C2025;`, no es necesario cambiar la base manualmente.
- Si aparece un error de permisos, validar que el usuario tenga rol suficiente (por ejemplo, `db_ddladmin`/`db_owner`) sobre `GD2C2025`.