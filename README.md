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

1. **Crear la base de datos en pgAdmin:**
   - Abre pgAdmin y conéctate al servidor PostgreSQL.
   - Haz clic derecho en **Databases** > **Create** > **Database**.
   - Nombre: `Simulacion`
   - Click en **Save**.

2. **Ejecutar los scripts SQL:**
   - **Paso 1 (Esquema):**
     1. Haz clic derecho sobre la base de datos `Simulacion` > **Query Tool**.
     2. Abre el archivo `fase1/ddl.sql` desde el menú **File > Open**.
     3. Selecciona todo el texto (Ctrl+A).
     4. Ejecuta el script (F5 o botón ▶).
   
   - **Paso 2 (Datos iniciales):**
     1. Repite el proceso anterior con el archivo `fase2/data.sql`.
     2. Verifica que no haya errores en la pestaña **Messages**.
    
     
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
