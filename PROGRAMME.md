# Programme détaillé — 10 mois

> **Méthode** : 5h/jour, réparties en 1h théorie + 3h pratique + 1h documentation/commit.
> Chaque semaine = un objectif clair. Chaque jour = un commit Git.

---

##  MOIS 1 — Linux, Bash & Fondations (150h)

### Semaine 1 — Linux essentials
- Jour 1-2 : Installation (VM), terminal, man pages
- Jour 3-4 : Filesystem (`ls`, `cd`, `pwd`, `mkdir`, `rm`, `find`)
- Jour 5-7 : Permissions (`chmod`, `chown`, `umask`), users, sudo

### Semaine 2 — Processus & Réseau
- Jour 8-10 : Processus (`ps`, `top`, `kill`, `systemctl`, `journalctl`)
- Jour 11-12 : Réseau (`ip`, `ping`, `netstat`, `ss`, `curl`, `wget`)
- Jour 13-14 : SSH, clés, transfert de fichiers (`scp`, `rsync`)

### Semaine 3 — Bash scripting
- Jour 15-17 : Variables, conditions, boucles
- Jour 18-19 : Fonctions, arguments, exit codes
- Jour 20-21 : `grep`, `awk`, `sed`, pipes

### Semaine 4 — Git & GitHub
- Jour 22-23 : `init`, `add`, `commit`, `status`, `log`, `diff`
- Jour 24-25 : Branches, merge, rebase
- Jour 26-27 : Remote, push, pull, PR
- Jour 28-30 : `.gitignore`, README, premier vrai repo sur GitHub

**Livrable M1** : Repo GitHub avec scripts Bash + doc des commandes apprises.

---

##  MOIS 2 — Python pour DevOps (150h)
- Bases Python (types, conditions, boucles, fonctions)
- Fichiers, JSON, CSV, exceptions
- `requests`, `subprocess`, `boto3` (AWS SDK)
- Tests avec `pytest`
- **Livrable** : Service Python de CloudShop

##  MOIS 3 — Conteneurisation (150h)
- Docker (images, Dockerfile, multi-stage)
- Docker Compose (multi-services)
- Registres (Docker Hub, ECR, ACR)
- **Livrable** : CloudShop tourne via `docker compose up`

##  MOIS 4 — CI/CD (150h)
- GitHub Actions (workflows, secrets)
- Jenkins (pipelines déclaratifs)
- GitLab CI (`.gitlab-ci.yml`)
- **Livrable** : Pipeline CI/CD complet de CloudShop

##  MOIS 5 — Infrastructure as Code (150h)
- Terraform (HCL, state, modules)
- AWS : VPC, EC2, RDS, S3
- Ansible (playbooks, rôles)
- **Livrable** : Infra CloudShop 100% reproductible

##  MOIS 6 — Cloud AWS + Azure (150h)
- AWS en prod (IAM, ELB, Auto Scaling)
- Azure fundamentals (DevOps, AKS)
- Multi-cloud & coûts
- **Livrable** : CloudShop déployé sur AWS + Azure

##  MOIS 7 — Monitoring & Observabilité (150h)
- Prometheus (PromQL, exporters)
- Grafana (dashboards, alertes)
- ELK / Loki
- **Livrable** : Stack monitoring + alertes actives

##  MOIS 8 — Kubernetes (150h)
- K8s basics (pods, services, deployments, ingress)
- kubectl, manifests YAML
- Helm (charts, templating)
- EKS + AKS
- **Livrable** : CloudShop orchestré sur K8s managé

##  MOIS 9 — DevSecOps (150h)
- HashiCorp Vault (secrets management)
- SonarQube (qualité de code)
- Trivy (scan de vulnérabilités)
- OWASP Top 10
- **Livrable** : CloudShop sécurisé end-to-end

##  MOIS 10 — Portfolio & Préparation Entretiens (150h)
- README parfait pour chaque projet
- Architecture diagrams
- Démos enregistrées
- CV orienté DevOps
- **Livrable** : Portfolio complet + candidatures lancées

---

##  Métriques cibles

| Métrique | Cible |
|----------|-------|
| Commits GitHub | ~450 sur 10 mois |
| Repos créés | 10+ projets thématiques |
| Labs CloudShop | 10 versions évolutives |
| Entretiens blancs | 5+ à la fin |

##  Méthode socratique

À chaque lab, je me pose les questions AVANT de chercher la solution :
1. **Qu'est-ce que ça fait ?**
2. **Pourquoi ça plante / ça marche ?**
3. **Si je devais refaire, comment je structurerais ?**

L'objectif : pouvoir **expliquer chaque ligne** en entretien.
