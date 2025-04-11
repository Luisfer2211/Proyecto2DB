# Proyecto 2 - Simulación de Reservas Concurrentes

## Manual de Ejecución

### 📋 Requisitos Previos
- PostgreSQL instalado y en ejecución
- Python 3.8 o superior
- Acceso de superusuario a PostgreSQL

### 📂 Estructura del Proyecto
Proyecto2DB/
├── fase1/
│ └── ddl.sql # Scripts de creación de tablas
├── fase2/
│ └── data.sql # Datos de prueba
├── fase3/
│ └── simulacion.py # Programa de simulación
├── fase4/
│ └── resultados.md # Tabla comparativa de niveles de aislamiento
└── fase5/
└── informe.pdf # Análisis y conclusiones finales

Copy

### 🛠 Instalación de Dependencias
Ejecutar en terminal:
```bash
pip install psycopg2-binary python-dotenv
🗄 Configuración de la Base de Datos
Crear base de datos:

sql
Copy
CREATE DATABASE Simulacion;
Ejecutar scripts SQL (desde psql o pgAdmin):

bash
Copy
psql -U postgres -d Simulacion -f fase1/ddl.sql
psql -U postgres -d Simulacion -f fase2/data.sql
🔧 Configurar Credenciales
En fase3/simulacion.py, modificar líneas 9-12:

python
Copy
DB_CONFIG = {
    "host": "localhost",
    "database": "Simulacion",
    "user": "tu_usuario",      # Reemplazar
    "password": "tu_password"  # Reemplazar
}
▶ Ejecutar Programa
Desde la carpeta fase3:

bash
Copy
python simulacion.py
📊 Resultados Esperados
La salida mostrará para cada combinación de prueba:

Copy
Usuarios Concurrentes: 5, 
Nivel de Aislamiento: READ COMMITTED, 
Reservas Exitosas: 3, 
Reservas Fallidas: 2, 
Tiempo que tomó ejecutar: 152.3 ms
📁 Explicación de Carpetas
Carpeta	Contenido
fase1	Esquema de la base de datos (DDL)
fase2	Datos iniciales y reservas de prueba
fase3	Programa de simulación de concurrencia
fase4	Resultados comparativos en formato tabla
fase5	Informe final con análisis y conclusiones
⚠ Solución de Problemas Comunes
Error de conexión: Verificar credenciales en simulacion.py

Dependencias faltantes: Ejecutar pip install -r requirements.txt

Deadlocks: PostgreSQL los maneja automáticamente con reintentos

Permisos insuficientes: Asegurar privilegios de superusuario en PostgreSQL

📄 Documentación Adicional
psycopg2 Documentation

PostgreSQL Concurrency Control

Copy

Este README incluye:
1. Instrucciones detalladas de configuración
2. Estructura clara de carpetas
3. Pasos específicos para cada fase
4. Formato consistente y fácil de leer
5. Solución de problemas comunes
6. Enlaces a documentación relevante

Los usuarios pueden clonar el repositorio y segu
