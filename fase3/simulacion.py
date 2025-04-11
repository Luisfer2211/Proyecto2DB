import psycopg2
import threading
import time
import random
from datetime import datetime

# Configuración de la base de datos
DB_CONFIG = {
    "host": "localhost",
    "database": "Simulacion",
    "user": "postgres",
    "password": "lol"
}

# Parámetros de prueba
EVENTO_META = 1
NIVELES_AISLAMIENTO = [
    "READ COMMITTED",
    "REPEATABLE READ",
    "SERIALIZABLE"
]
USUARIOS_SIMULTANEOS = [5, 10, 20, 30]

class SimuladorReservas:
    def __init__(self, nivel_aislamiento):
        self.nivel_aislamiento = nivel_aislamiento
        self.exitos = 0
        self.fallos = 0
        self.lock = threading.Lock()
        self.asientos_evento = self.obtener_asientos_evento()

    def obtener_asientos_evento(self):
        conn = psycopg2.connect(**DB_CONFIG)
        cursor = conn.cursor()
        cursor.execute(  # <-- Aquí faltaba cerrar el paréntesis
            "SELECT numero_asiento FROM asientos "
            "WHERE id_evento = %s",
            (EVENTO_META,)  # Paréntesis correctamente cerrado
        )
        asientos = [row[0] for row in cursor.fetchall()]
        conn.close()
        return asientos

    def reservar_asiento(self, user_id):
        try:
            conn = psycopg2.connect(**DB_CONFIG)
            conn.set_session(isolation_level=self.nivel_aislamiento)
            cursor = conn.cursor()

            # Seleccionar asiento aleatorio
            asiento_meta = random.choice(self.asientos_evento)
            
            try:
                cursor.execute(
                    "SELECT disponible FROM asientos "
                    "WHERE id_evento = %s AND numero_asiento = %s FOR UPDATE",
                    (EVENTO_META, asiento_meta)
                )
                disponible = cursor.fetchone()[0]

                if disponible:
                    # Actualizar asiento
                    cursor.execute(
                        "UPDATE asientos SET disponible = FALSE "
                        "WHERE id_evento = %s AND numero_asiento = %s",
                        (EVENTO_META, asiento_meta)
                    )
                    # Registrar reserva
                    cursor.execute(
                        "INSERT INTO reserva_maestro (id_usuario, id_evento, fecha_reserva) "
                        "VALUES (%s, %s, %s) RETURNING id_reserva",
                        (user_id, EVENTO_META, datetime.now())
                    )
                    reserva_id = cursor.fetchone()[0]
                    cursor.execute(
                        "INSERT INTO reserva_detalle (id_reserva, id_asiento) "
                        "VALUES (%s, (SELECT id_asiento FROM asientos "
                        "WHERE id_evento = %s AND numero_asiento = %s))",
                        (reserva_id, EVENTO_META, asiento_meta)
                    )
                    conn.commit()
                    with self.lock:
                        self.exitos += 1
                else:
                    conn.rollback()
                    with self.lock:
                        self.fallos += 1

            except Exception as e:
                conn.rollback()
                with self.lock:
                    self.fallos += 1

        except Exception as e:
            print(f"Error de conexión: {str(e)}")
        finally:
            if 'conn' in locals():
                conn.close()

    def reset_asientos(self):
        conn = psycopg2.connect(**DB_CONFIG)
        cursor = conn.cursor()
        cursor.execute(
            "UPDATE asientos SET disponible = TRUE "
            "WHERE id_evento = %s",
            (EVENTO_META,)
        )
        conn.commit()
        conn.close()


def ejecutar_prueba(n_usuarios, nivel):
    simulador = SimuladorReservas(nivel)
    hilos = []
    
    start_time = time.perf_counter()
    
    for i in range(n_usuarios):
        t = threading.Thread(target=simulador.reservar_asiento, args=(i+1,))
        hilos.append(t)
        t.start()
    
    for t in hilos:
        t.join()
    
    elapsed_time = (time.perf_counter() - start_time) * 1000  # ms
    
    # Nueva salida formateada
    print(f"Usuarios Concurrentes: {n_usuarios}, "
          f"Nivel de Aislamiento: {nivel}, "
          f"Reservas Exitosas: {simulador.exitos}, "
          f"Reservas Fallidas: {simulador.fallos}, "
          f"Tiempo que tomó ejecutar: {elapsed_time:.1f} ms\n")
    
    simulador.reset_asientos()

if __name__ == "__main__":
    # Encabezado opcional (puedes quitarlo si prefieres)
    print("Resultados de las pruebas:\n" + "-"*50)
    
    for nivel in NIVELES_AISLAMIENTO:
        for usuarios in USUARIOS_SIMULTANEOS:
            ejecutar_prueba(usuarios, nivel)