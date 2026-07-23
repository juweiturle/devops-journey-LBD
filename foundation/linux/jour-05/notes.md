# Liste tous les processus
ps aux | head -10

# Top interactif (appuie q pour quitter)
top

# Cherche un process précis
ps aux | grep sshd

# Liste tous les services
systemctl list-units --type=service | head -20

# Statut du service SSH (celui qui te permet de te connecter)
systemctl status ssh

# Logs du service SSH
sudo journalctl -u ssh --since "1 hour ago" | head -30

# Stautus du srvice cron
systemctl status cron 

# Activation du service cron 
sudo systemctl start cron
sudo systemctl enable cron (demarre le service cron au demarrage)
