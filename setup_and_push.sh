#!/bin/bash
# Script de ayuda para configurar y subir el repositorio fácilmente

echo "=== Creador y Subidor Automático de Repositorio ==="
echo ""
echo "Este script te asistirá para vincular y subir tu proyecto a GitHub."
echo ""

if [ -z "$1" ]; then
    echo "Uso: ./setup_and_push.sh <URL_DE_TU_REPOSITTORIO_GITHUB>"
    echo "Ejemplo: ./setup_and_push.sh https://github.com/tu-usuario/ai-growth-engine.git"
    exit 1
fi

REPO_URL=$1

echo "1. Configurando remote origin..."
git remote remove origin 2>/dev/null
git remote add origin "$REPO_URL"

echo "2. Asegurando rama principal 'main'..."
git branch -M main

echo "3. Subiendo archivos a GitHub..."
git push -u origin main

echo ""
echo "¡Hecho! Revisa la pestaña 'Actions' en tu repositorio de GitHub."
