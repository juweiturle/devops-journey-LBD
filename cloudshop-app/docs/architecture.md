# Architecture cible de CloudShop

> Document vivant. Mis à jour à chaque milestone.

## Vue d'ensemble (cible v4.0 — Mois 10)
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── │ Les utilisateurs │ └──────────────────────────────────────────────────────────────────────────────────────────────────────────────────── │ ▼ ┌───────────────────────────────────┐──────┐─────┐ │ CDN + WAF (CloudFront │ │ / Porte D'entrée Azure) │ └───────────────────────────────┘────┘─────┘ │ ▼ ┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── │ Équilibreur de charge (ALB / Azure LB) │ └─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── │ │ ▼ ▼ ┌───────────────────────────────────┐────┐──┐──┐──┐──┐──┐───┐ │ CloudShop API │ │ CloudShop API │ │ (EKS pod) │ │ (AKS pod) │ └─────────────┘────────────────────────────┘───────────────────┘ │ │ └────────────────────────────┘──┘───┘───┘ ▼ ┌───────────────────────┐───┐────┐───┐ │ PostgreSQL (RDS / │ │ Base de données Azure) │ └─────────────────────┘───┘──┘ │ ▼ ┌───────────────────────┐───┐────┐───┐ │ Cache (Redis) │ └───────────────┘────┘───┘──┘


## Stack par couche

| Couche | Technologie |
|--------|-------------|
| Edge | CDN + WAF |
| Réseau | VPC, Security Groups, NACLs |
| Compute | EKS (AWS) + AKS (Azure) — multi-cloud |
| Storage | RDS PostgreSQL + S3 (assets) |
| Observabilité | Prometheus + Grafana + Loki |
| Secrets | HashiCorp Vault |
| CI/CD | GitHub Actions + Jenkins |
| IaC | Terraform + Ansible |

## Décisions d'architecture (ADR)

- **ADR-001** : Pourquoi ed25519 plutôt que RSA — *valeur par défaut moderne*
- **ADR-002** : Multi-cloud AWS + Azure — *compétence portfolio + résilience*
- **ADR-003** : FastAPI plutôt que Django — *async-first, léger*

_(à enrichir chaque mois)_
