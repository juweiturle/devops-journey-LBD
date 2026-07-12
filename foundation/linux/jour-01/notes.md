# 📅 Jour 1 — Linux Essentials

**Date** : 11 juillet 2026
**Objectif** : Premières commandes Linux

## 🎯 Ce que j'ai pratiqué

| Commande | Description | Exemple |
|----------|-------------|---------|
| `pwd` | Affiche le dossier courant | `/home/...` |
| `ls` | Liste les fichiers | `ls` |
| `ls -la` | Liste détaillée avec fichiers cachés | `ls -la` |
| `ls -lah` | Liste détaillée avec fichiers cachés en les affichants en une version facilement lisibles par un utilisateur lambda | `ls -lah` |

| `cd` | Change de dossier | `cd /tmp` |
| `cd ..` | Remonte d'un niveau | `cd ..` |
| `cd ~` | Retourne au home | `cd ~` |
| `whoami` | Affiche l'utilisateur courant | `whoami` |
| `date` | Affiche la date/heure | `date` |
| `uname -a` | Infos système complètes | `uname -a` |
| `man <cmd>` | Manuel d'une commande | `man ls` |

## 🧠 Ce que j'ai compris

- Le `~` représente mon dossier home (`/home/gnk28` dans mon cas)
- Les fichiers commençant par `.` sont **cachés** (`.ssh/`, `.gitignore`, etc.)
- `ls -la` est la commande à connaître par cœur — c'est l'équivalent d'un "voir tous les détails"
- `man` est un livre de référence intégré au système

## 🧪 Mini-lab : explorer le système

_(On le fera juste après)_

## 💭 Question socratique du jour

_(À remplir)_

## Jour 1 suite
cd ~/devops-journey-LBD/01-foundation/linux/jour-01

# Créer un dossier
mkdir test_dir

# Créer un fichier vide
touch test_file.txt

# Voir ce qu'on a créé
ls -la

# Copier
cp test_file.txt test_file_copy.txt
ls -la

# Renommer / déplacer
mv test_file_copy.txt renamed.txt
ls -la

# Supprimer
rm renamed.txt
rmdir test_dir   # supprime un dossier vide

# Créer + supprimer un truc (⚠️ dangereux)
mkdir -p temp/level1/level2
ls -laR temp/

# rm -rf (⚠️ DANGEREUX)
rm -rf temp/
ls -la

## 📌 Commit du jour

```bash
git add .
git commit -m "📝 docs(M1-J1): add Day 1 Linux essentials notes"
git push
