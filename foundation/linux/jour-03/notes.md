# 📅 Jour 3 — Permissions Linux

## 🎯 Décryptage de chmod

| Chiffre | Somme | Droits |
|---------|-------|--------|
| 7 | 4+2+1 | rwx (tout) |
| 6 | 4+2 | rw- (sans exécution) |
| 5 | 4+1 | r-x (sans écriture) |
| 4 | 4 | r-- (lecture seule) |

## 🧠 Différence fichier vs dossier

| Droit | Sur un fichier | Sur un dossier |
|-------|---------------|----------------|
| `r` | Lire le contenu | Lister le contenu |
| `w` | Modifier le contenu | Créer/supprimer dedans |
| `x` | Exécuter (script) | **Entrer** dedans (cd) |

## 💡 Conventions

- Fichiers : `644` (rw- r-- r--)
- Dossiers : `755` (rwx r-x r-x)
- Scripts : `755` pour qu'ils soient exécutables
- Secrets : `600` (rw- --- ---) → lisible SEUL par le owner

## 🧪 Lab du jour

- ✅ Compris que le user owner a 7 = rwx
- ✅ Compris que others a 0 = aucun droit
- ✅ Cas pratique : Apache en `750` ne marche pas
