#!/bin/bash
echo "Iniciando entorno virtual de Podman..."
podman machine start
podman start nonamestore-db

echo "Lanzando Backend en segundo plano..."
cd /Users/marcosoto/Desktop/DevOpsProject/NoNameStore/backend
go run cmd/api/main.go & 

echo "Lanzando Frontend..."
cd /Users/marcosoto/Desktop/DevOpsProject/NoNameStore/frontend
pnpm dev