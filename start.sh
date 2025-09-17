#!/bin/bash

clear
cat logo.txt 2>/dev/null
echo "🛡️ Welkom bij MittemeijerCTF – Kempen’s finest 🛡️"
echo "-----------------------------------------------"

# Rootdetectie
if [ "$EUID" -ne 0 ]; then
  echo "⚠️ Rootrechten vereist voor sommige modules."
  echo "Start opnieuw met sudo voor volledige toegang."
  echo ""
fi

# Menu
echo "Kies een optie:"
echo "1) Recon & Scan Tools"
echo "2) Exploit Challenges"
echo "3) Privilege Escalation Lab"
echo "4) Scorebord bekijken"
echo "5) Demo-modus starten"
echo "6) Exit"
read -p "👉 " keuze

case $keuze in
  1) bash modules/recon.sh ;;
  2) bash modules/exploits.sh ;;
  3) bash modules/escalation.sh ;;
  4) bash modules/scoreboard.sh ;;
  5) bash demo/demo_launcher.sh ;;
  6) echo "Tot de volgende keer, hacker van de Kempen!" ;;
  *) echo "Ongeldige keuze. Probeer opnieuw." ;;
esac
