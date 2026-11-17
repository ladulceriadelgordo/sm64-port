#!/bin/bash
# build.sh — Compila el port de Super Mario 64 (sm64-port) para PC.
# Requisitos: MSYS2 instalado y tu ROM de Super Mario 64 (USA).
# Uso:
#   1. Clona este repo y entra a la carpeta.
#   2. Copia tu ROM de Super Mario 64 (USA) aquí con el nombre baserom.us.z64.
#   3. Abre la terminal MINGW64 de MSYS2 en esta carpeta y ejecuta: bash build.sh

set -e

echo "=== Super Mario 64 Port — Build ==="
echo ""

# Verificar que estamos en la carpeta del repo
if [ ! -f Makefile ]; then
  echo "ERROR: No encuentro el archivo Makefile."
  echo "Ejecuta este script dentro de la carpeta del repo (sm64-port)."
  exit 1
fi

# 1. ROM (se revisa primero para fallar rápido si falta)
if [ ! -f baserom.us.z64 ]; then
  echo ""
  echo "ERROR: No encontré baserom.us.z64 en esta carpeta."
  echo "Copia tu ROM de Super Mario 64 (USA) aquí con el nombre baserom.us.z64"
  echo "y vuelve a ejecutar: bash build.sh"
  exit 1
fi
echo "[1/3] ROM encontrado: baserom.us.z64"

# 2. Dependencias
echo "[2/3] Actualizando lista de paquetes e instalando dependencias..."
pacman -Sy --noconfirm
pacman -S --needed --noconfirm git make python3 mingw-w64-x86_64-gcc mingw-w64-x86_64-SDL2 mingw-w64-x86_64-glew

# 3. Compilar
echo "[3/3] Compilando... (tarda unos minutos)"
make VERSION=us -j4

echo ""
echo "¡Listo! El juego está en: build/us_pc/sm64.us.exe"
echo ""
echo "IMPORTANTE: limita el juego a 30 FPS o el audio sonará mal."
echo "- NVIDIA: Panel de control de NVIDIA -> Max Frame Rate -> 30"
echo "- Cualquiera (AMD/Intel/NVIDIA): RTSS -> límite 30 FPS"
