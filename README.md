# Proyecto 2 - Simulación de Reservas Concurrentes

## Manual de Ejecución

### 📋 Requisitos Previos
- PostgreSQL instalado y en ejecución
- Python 3.8 o superior
- Acceso de superusuario a PostgreSQL

### 📂 Estructura del Proyecto
```
Proyecto2DB/
├── fase1/
│   └── ddl.sql          # Scripts de creación de tablas
├── fase2/
│   └── data.sql         # Datos de prueba
├── fase3/
│   └── simulacion.py    # Programa de simulación
├── fase4/
│   └── resultados.jpg   # Tabla comparativa de niveles de aislamiento
└── fase5/
    └── informe.pdf      # Análisis y conclusiones finales
```

### 🛠 Instalación de Dependencias
Ejecutar en terminal:
```bash
pip install psycopg2-binary python-dotenv
```

### 🗄 Configuración de la Base de Datos
1. Crear base de datos:
```sql
CREATE DATABASE Simulacion;
```

2. Ejecutar scripts SQL (desde psql o pgAdmin):
```bash
psql -U postgres -d Simulacion -f fase1/ddl.sql
psql -U postgres -d Simulacion -f fase2/data.sql
```

### 🔧 Configurar Credenciales
En `fase3/simulacion.py`, modificar líneas 9-12:
```python
DB_CONFIG = {
    "host": "localhost",
    "database": "Simulacion",
    "user": "tu_usuario",      # Reemplazar
    "password": "tu_password"  # Reemplazar
}
```

### ▶ Ejecutar Programa
Desde la carpeta `fase3`:
```bash
python simulacion.py
```

### 📊 Resultados Esperados
La salida mostrará para cada combinación de prueba:
```
Usuarios Concurrentes: 5, 
Nivel de Aislamiento: READ COMMITTED, 
Reservas Exitosas: 3, 
Reservas Fallidas: 2, 
Tiempo que tomó ejecutar: 152.3 ms
```

### 📁 Explicación de Carpetas
| Carpeta | Contenido |
|---------|-----------|
| fase1   | Esquema de la base de datos (DDL) |
| fase2   | Datos iniciales y reservas de prueba |
| fase3   | Programa de simulación de concurrencia |
| fase4   | Resultados comparativos en formato tabla |
| fase5   | Informe final con análisis y conclusiones |

### ⚠ Solución de Problemas Comunes
1. **Error de conexión**: Verificar credenciales en `simulacion.py`
2. **Deadlocks**: PostgreSQL los maneja automáticamente con reintentos
3. **Permisos insuficientes**: Asegurar privilegios de superusuario en PostgreSQL

### 📄 Documentación Adicional
- [psycopg2 Documentation](https://www.psycopg.org/docs/)
- [PostgreSQL Concurrency Control](https://www.postgresql.org/docs/current/transaction-iso.html)
