# README für Omada Install Script

![Omada Controller](https://img.shields.io/badge/Omada-Controller-green?style=for-the-badge)  
![Ubuntu](https://img.shields.io/badge/Ubuntu-Compatible-orange?style=for-the-badge)  
![Bash](https://img.shields.io/badge/Script-Bash-blue?style=for-the-badge)

## 📜 Beschreibung

Dieses Skript wurde entwickelt, um den Omada SDN Controller auf einer **Ubuntu-Server**-Installation schnell und einfach zu installieren. Es richtet automatisch alle erforderlichen Abhängigkeiten ein und installiert den Controller mit einem benutzerdefinierten Download-Link.

## 🚀 Funktionen

- 🛠 Aktualisiert das System.
- ☕ Installiert **Java** und **JSVC**.
- 📦 Installiert die benötigte Version von **MongoDB**.
- 📥 Lädt den Omada Controller herunter und installiert ihn.
- 🔍 Zeigt nur Fehler während der Ausführung an, um die Übersichtlichkeit zu erhöhen.

---

## ✅ Voraussetzungen

- 💻 Betriebssystem: **Ubuntu 20.04**, **Ubuntu 22.04** oder neuer.
- 🔑 Root-Zugriff erforderlich.

---

## 🛠 Verwendung

1. Lade das Skript herunter:
   ```bash
   wget -O install_omada.sh https://example.com/path/to/install_omada.sh](https://raw.githubusercontent.com/Zenutrix/OmadaInstallScript/refs/heads/main/install_omada.sh
   ```

2. Mache das Skript ausführbar:
   ```bash
   chmod +x install_omada.sh
   ```

3. Führe das Skript aus:
   ```bash
   sudo ./install_omada.sh
   ```

4. Gib den aktuellen Download-Link für den Omada SDN Controller ein, wenn du dazu aufgefordert wirst.

---

## 💾 Kompatibilität

| Betriebssystem   | Version        |
|------------------|----------------|
| Ubuntu Server    | 20.04, 22.04   |


