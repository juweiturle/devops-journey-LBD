#!/bin/bash
# =============================================================
# system-report.sh — Mini-projet Mois 1 du parcours DevOps LBD
# Auteur : Erwin EYOUM CERTAIN (Learn By Doing)
# Description : Affiche un rapport système (CPU, RAM, disque,
#               top processus, services actifs).
# Usage : ./system-report.sh
# =============================================================

set -euo pipefail   # mode strict : stop si erreur / variable indéfinie / pipe fail

# --- Couleurs (si terminal le supporte) ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# --- Fonctions ---
print_header() {
    echo -e "${BLUE}============================================================${NC}"
    echo -e "${BLUE}  $1${NC}"
    echo -e "${BLUE}============================================================${NC}"
}

print_section() {
    echo -e "\n${GREEN}▶ $1${NC}"
}

# --- Collecte des infos ---
HOSTNAME=$(hostname)
OS=$(uname -a)
DATE=$(date '+%Y-%m-%d %H:%M:%S')
UPTIME=$(uptime -p 2>/dev/null || uptime)

print_header "RAPPORT SYSTÈME — $HOSTNAME"
echo -e "Date       : ${YELLOW}$DATE${NC}"
echo -e "Uptime     : ${YELLOW}$UPTIME${NC}"
echo -e "OS         : ${YELLOW}$OS${NC}"

# --- Mémoire ---
print_section "Mémoire (RAM)"
free -h | awk 'NR==1 || /Mem|Swap/'

# --- Disque ---
print_section "Espace disque"
df -h | awk 'NR==1 || /^\/dev/'

# --- Charge CPU ---
print_section "Charge CPU (load average)"
uptime

# --- Top 5 processus par CPU ---
print_section "Top 5 processus par utilisation CPU"
ps aux --sort=-%cpu | head -6 | awk '{printf "%-10s %-5s %-5s %s\n", $1, $2, $3, $11}'

# --- Top 5 processus par RAM ---
print_section "Top 5 processus par utilisation RAM"
ps aux --sort=-%mem | head -6 | awk '{printf "%-10s %-5s %-5s %s\n", $1, $2, $4, $11}'

# --- Services critiques (à adapter) ---
print_section "Statut services critiques"
for service in ssh sshd cron crond; do
    if systemctl list-unit-files | grep -q "^${service}.service"; then
        if systemctl is-active --quiet "$service" 2>/dev/null; then
            echo -e "  ${GREEN}✓${NC} $service : actif"
        else
            echo -e "  ${RED}✗${NC} $service : inactif"
        fi
    fi
done

# --- Réseau (IPs) ---
print_section "Adresses IP"
ip -4 addr show 2>/dev/null | awk '/inet / {print "  " $2 " sur " $NF}' || hostname -I

print_header "FIN DU RAPPORT"

# --- Logs : garder une trace ---
LOG_DIR="$HOME/.local/share/system-report"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/report-$(date '+%Y%m%d-%H%M%S').log"

# Re-exécuter sans couleurs vers le log
{
    "$0" 2>&1 | sed 's/\x1b\[[0-9;]*m//g'
} > "$LOG_FILE" 2>/dev/null || true

echo -e "\nRapport sauvegardé : ${YELLOW}$LOG_FILE${NC}"
