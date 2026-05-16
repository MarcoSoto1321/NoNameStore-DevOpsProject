#!/bin/bash
# database/podman-db.sh

# Detener y remover el contenedor si ya existe (idempotencia)
echo "🔄 Limpiando contenedores previos de MariaDB..."
podman rm -f nonamestore-db 2>/dev/null

echo "🚀 Iniciando contenedor de MariaDB con Podman..."

# Ejecutar el contenedor
podman run -d \
  --name nonamestore-db \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=secretroot \
  -e MYSQL_DATABASE=nonamestore \
  -e MYSQL_USER=storeuser \
  -e MYSQL_PASSWORD=storepassword \
  -v "$(pwd)/init.sql:/docker-entrypoint-initdb.d/1-init.sql:Z" \
  mariadb:10.11

echo "⏳ Esperando 5 segundos a que la base de datos procese el init.sql..."
sleep 5

echo "✅ Contenedor inicializado correctamente."