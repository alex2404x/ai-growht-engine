import os
import requests
import json
from datetime import datetime

# Estrategia:
# 1. Obtener tendencia.
# 2. Generar guion corto enfocado en afiliación.
# 3. Guardar en carpeta para procesamiento de video.

def main():
    print(f"[{datetime.now()}] Iniciando ciclo de generación de contenido...")
    # Lógica de detección aquí (API gratuita de NewsAPI o similar)
    # Placeholder: simulación de detección
    topic = "Gadgets tecnológicos para productividad"

    with open("automated-growth/content_queue.json", "w") as f:
        json.dump({"topic": topic, "status": "pending", "timestamp": str(datetime.now())}, f)

    print("Contenido planificado exitosamente.")

if __name__ == "__main__":
    main()
