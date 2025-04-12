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
└── fase5/
    └── informe.pdf      # Documento de análisis final
```

### 🛠 Instalación de Dependencias
```bash
pip install psycopg2-binary python-dotenv
```

### 🗄 Configuración Inicial
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
