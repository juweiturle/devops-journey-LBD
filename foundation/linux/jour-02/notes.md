# 📅 Jour 2 — Recherche sous Linux

**Date** : 12 juillet 2026
**Objectif** : find, locate, which, grep

## 🎯 Commandes apprises

| Commande | Usage | Exemple |
|----------|-------|---------|
| `find` | Recherche par critères | `find / -name "*.log"` |
| `locate` | Recherche rapide (base de données) | `locate nginx` |
| `which` | Localise une commande | `which python3` |
| `grep` | Cherche du texte dans un fichier | `grep "error" file.log` |

## 🧪 Lab du jour

- ✅ Trouvé 3 fichiers .log avec find
- ✅ Localisé python3 et git avec which
- ✅ Grep "root" dans /etc/passwd

## 🧠 Ce que j'ai compris

- `find` est puissant mais lent (scan en temps réel)
- `locate` est rapide mais faut toujours que la base de donnee soit a jour
- `which` est mon  ami pour savoir où est un outil
- `grep` est le plus utilisé au quotidien

## 💭 Question socratique du jour

- find vs locate : quand utiliser l'un ou l'autre ?
- grep -i, -n, -c, -v : à quoi servent ces options ?
