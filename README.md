# TP Bases de Datos – Carga de la Tabla Maestra

Este repositorio contiene los scripts necesarios para trabajar con el TP de Bases de Datos. A continuación se detallan los pasos para cargar la tabla maestra con todos los datos.

## Prerrequisitos
- Tener instalado SQL Server y SQL Server Management Studio (SSMS).
- Contar con permisos para crear bases de datos y ejecutar scripts.
- Acceso al material del TP.

## 1️⃣ Descargar los datos
1. Ir a la página del TP:  
   https://sites.google.com/site/gestiondedatosutn/trabajo-práctico?authuser=0
2. Descargar el archivo "Trabajo Práctico" que contiene la tabla maestra y los scripts.

## 2️⃣ Crear la base de datos
1. Abrir SSMS.  
2. Crear una nueva base de datos con el nombre:
```sql
CREATE DATABASE GD2C2025;
```
3. Verificar la conexión y que la base exista.

## 3️⃣ Preparar el script del esquema
1. Abrir el archivo `gd_esquema.Schema.sql`.
2. Reemplazar la sentencia de cambio de base:
Antes:
```sql
USE GD1C2025;
```
Después:
```sql
USE GD2C2025;
```
3. Guardar el archivo.

## 4️⃣ Ejecutar el script de carga de la tabla maestra
1. Abrir el archivo `generarTabla.bat` en un editor de texto.
2. Reemplazar `{nombre_servidor_sql2022}` por el nombre de tu servidor SQL.
3. Guardar y ejecutar el archivo `.bat`.
4. Esperar a que la ventana de CMD se cierre automáticamente al finalizar.

## 5️⃣ Verificar la carga
1. Abrir SSMS y conectarse a la base de datos `GD2C2025`.
2. Ejecutar la siguiente consulta:
```sql
SELECT COUNT(*) 
FROM [GD2C2025].[gd_esquema].[Maestra];
```
3. Resultado esperado:
```
240918
```

## Notas
- Si la ejecución falla, revisa el nombre del servidor, credenciales y que la base `GD2C2025` exista.
- Asegúrate de ejecutar los scripts con un usuario con permisos suficientes.