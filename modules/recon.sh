#!/bin/bash
echo "🔍 Recon & Scan Tools"
echo "----------------------"
read -p "Voer een domein of IP in: " target

echo "1) WHOIS"
echo "2) DIG"
echo "3) NMAP (basic scan)"
read -p "👉 Kies een tool: " tool

case $tool in
  1) whois $target ;;
  2) dig $target ;;
  3) nmap -Pn -sV $target ;;
  *) echo "Ongeldige keuze." ;;
esac
