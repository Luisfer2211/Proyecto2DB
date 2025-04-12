# Proyecto 2 - Simulación de Reservas Concurrentes

## Manual de Ejecución Completo

### 📋 Requisitos Previos
- PostgreSQL 15+ instalado y en ejecución
- Python 3.10 o superior
- Acceso de administrador a PostgreSQL
- Git (opcional para clonar repositorio)

### 📂 Estructura del Proyecto
```
Proyecto2DB/
├── fase1/
│   ├── ddl.sql          # Scripts de creación de tablas
│   └── ERD.png          # Diagrama Entidad-Relación
├── fase2/
│   └── data.sql         # Datos iniciales de prueba
├── fase3/
│   └── simulacion.py    # Programa de simulación con menú interactivo
├── fase4/
│   ├── resultados.jpg   # Gráficos comparativos
│   └── datos_crudos.csv # Datos numéricos
└── fase5/
    └── informe.pdf      # Documento de análisis final
```

### 🛠 Instalación de Dependencias
```bash
pip install psycopg2-binary python-dotenv
```

### 🗄 Configuración Inicial
1. **Crear base de datos**:
   ```sql
   CREATE DATABASE Simulacion 
   WITH ENCODING 'UTF8' 
   CONNECTION LIMIT = -1;
   ```

2. **Ejecutar scripts SQL** (en este orden):
   ```bash
   psql -U postgres -d Simulacion -f fase1/ddl.sql
   psql -U postgres -d Simulacion -f fase2/data.sql
   ```

### 🖥️ Uso del Menú Interactivo
El programa ofrece un menú intuitivo con dos modos de operación:

#### 1. Modo Automático (Resultados Predefinidos)
- Ejecuta todas las combinaciones preconfiguradas:
  - 5, 10, 20 y 30 usuarios
  - Los 3 niveles de aislamiento
- Muestra resultados en formato tabla

#### 2. Modo Personalizado
Permite especificar:
- Número de usuarios (1-50)
- Nivel de aislamiento:
  - 1. READ COMMITTED
  - 2. REPEATABLE READ
  - 3. SERIALIZABLE

**Flujo típico de uso**:
1. Iniciar programa:
   ```bash
   cd fase3
   python simulacion.py
   ```

2. Seleccionar opción:
   ```
   ===================== MENÚ PRINCIPAL =====================
   1. Mostrar resultados predefinidos
   2. Ejecutar prueba personalizada
   3. Salir
   Seleccione una opción (1-3): 2
   ```

3. Para pruebas personalizadas:
   ```
   Ingrese número de usuarios (1-50): 15
   
   Niveles disponibles:
   1. READ COMMITTED
   2. REPEATABLE READ
   3. SERIALIZABLE
   Seleccione nivel (1-3): 2
   ```

4. Resultados:
   ```
   Usuarios Concurrentes: 15, 
   Nivel: REPEATABLE READ, 
   Éxitos: 12, 
   Fallos: 3, 
   Tiempo: 284.7 ms
   ```

5. Continuar o salir:
   ```
   ¿Volver al menú principal? (s/n): s
   ```

### 🔧 Configuración Avanzada
En `simulacion.py` ajustar:
```python
DB_CONFIG = {
    "host": "localhost",      # Cambiar si usa servidor remoto
    "database": "Simulacion", # Nombre de la BD
    "user": "admin",          # Usuario con permisos
    "password": "secure123",  # Contraseña
    "port": "5432"           # Puerto personalizado
}
```

### 📊 Interpretación de Resultados
- **Reservas exitosas**: Transacciones completadas correctamente
- **Reservas fallidas**: Conflictos de concurrencia detectados
- **Tiempo ejecución**: Latencia total de procesamiento

### ⚠ Solución de Problemas
| Error | Solución |
|-------|----------|
| `psycopg2.OperationalError` | Verificar conexión a PostgreSQL |
| `Deadlock found` | Normal en pruebas de concurrencia |
| `SyntaxError` | Validar scripts SQL en pgAdmin |

### 📌 Mejores Prácticas
1. Ejecutar pruebas en ambiente aislado
2. Reiniciar la base de datos entre pruebas importantes
3. Verificar logs de PostgreSQL para detalles técnicos

### 📄 Documentación Adicional
- [Manual de psycopg2](https://www.psycopg.org/docs/usage.html)
- [Guía oficial PostgreSQL](https://www.postgresql.org/docs/15/tutorial-transactions.html)
``` 
