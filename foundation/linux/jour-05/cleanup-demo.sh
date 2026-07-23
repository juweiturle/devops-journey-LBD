#!/bin/bash
# cleanup-demo.sh — Démontre le cleanup à SIGTERM

echo "Script démarré (PID: $$)"

# Cette fonction est appelée à la sortie
cleanup() {
    echo ""
    echo "🧹 Cleanup en cours..."
    echo "Fermeture des fichiers..."
    sleep 2
    echo "Libération des ressources..."
    echo "✅ Sortie propre"
    exit 0
}

# Capture SIGTERM (15)
trap cleanup TERM

# Boucle infinie
while true; do
    echo "Je tourne... (Ctrl+C pour arrêter ou kill $$)"
    sleep 2
done
