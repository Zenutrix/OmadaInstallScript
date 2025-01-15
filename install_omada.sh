#!/bin/bash

# Überprüfen, ob das Skript mit Root-Rechten ausgeführt wird
if [ "$EUID" -ne 0 ]; then
  echo "Bitte das Skript mit Root-Rechten ausführen (sudo)."
  exit
fi

# Werbebotschaft
echo "*******************************************************"
echo "* Falkner&Riml GmbH Omada Install Script by Thomas Schöpf *"
echo "*******************************************************"
sleep 2

# Funktion zum Ausführen von Befehlen mit Fehleranzeige
run_command() {
  echo -e "\n>> $1"
  eval "$1" 2>&1 | grep -i "error" || true
}

# Aktuellen Download-Link abfragen
echo "Omada Controller Installationsskript"
read -p "Bitte den aktuellen Download-Link für den Omada Controller eingeben: " OMADA_LINK

# System aktualisieren
run_command "sudo apt update && sudo apt upgrade -y"

# Java und JSVC installieren
run_command "sudo apt-get install -y curl openjdk-8-jre-headless jsvc"

# MongoDB installieren
run_command "sudo apt-get install -y gnupg curl"
run_command "curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor"
run_command "echo 'deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse' | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list"
run_command "sudo apt-get update"
run_command "sudo apt-get install -y mongodb-org"

# Omada Controller herunterladen und installieren
run_command "wget -O Omada_SDN_Controller.deb '$OMADA_LINK'"
run_command "sudo dpkg -i Omada_SDN_Controller.deb"

# Installation abgeschlossen
echo -e "\nInstallation abgeschlossen."
echo "Starte den Omada Controller mit dem folgenden Befehl:"
echo "sudo systemctl start omada"
