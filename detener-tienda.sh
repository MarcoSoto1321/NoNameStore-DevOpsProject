#!/bin/bash
# detener-tienda.sh

echo "🛑 Deteniendo Frontend y procesos locales..."
# Buscamos si Vite (Svelte) se quedó colgado en algún lado y lo cerramos
pkill -f "vite" 2>/dev/null

echo "💀 Liberando el puerto 8080 (Terminando el motor de Go)..."
# Esta es la forma más segura en Mac: busca qué proceso tiene el puerto 8080 y lo apaga
PID_GO=$(lsof -t -i:8080)
if [ -z "$PID_GO" ]; then
    echo "   Go ya estaba apagado."
else
    kill -9 $PID_GO
    echo "   Backend de Go detenido con éxito."
fi

echo "🦭 Apagando contenedores de base de datos..."
podman stop nonamestore-db 2>/dev/null

echo "🔌 Apagando la Máquina Virtual de Podman..."
podman machine stop

echo "✅ ¡Todo el entorno ha sido apagado y tu RAM está libre! Hasta la próxima sesión."