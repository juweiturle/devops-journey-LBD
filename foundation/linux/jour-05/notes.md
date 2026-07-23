# 📅 Jour 5 — Processus, Services, Signaux

## 🎯 Signaux Unix essentiels

| Signal | Numéro | Comportement | Usage |
|--------|--------|--------------|-------|
| SIGTERM | 15 | "Termine-toi proprement" (cleanup possible) | 1er choix |
| SIGINT | 2 | "Interromps-toi" (Ctrl+C) | Interruption utilisateur |
| SIGKILL | 9 | "Meurs maintenant" (pas de cleanup) | Dernier recours |

## 🧠 Règle d'or

Toujours essayer SIGTERM avant SIGKILL. SIGKILL ne laisse aucune chance au process de faire son cleanup.

## 🧪 Lab du jour

- ✅ ps aux pour voir les process
- ✅ kill vs kill -9
- ✅ systemctl status
- ✅ cleanup-demo.sh qui montre le cleanup sur SIGTERM
