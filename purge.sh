#!/bin/bash
DIR="/tmp/test"
LOG="/var/log/purge.log"

if [ -d "$DIR" ];then
echo " Suppression des fichier de $DIR à date : $(date)">> "$LOG"
echo "Fichiers supprimés" >> "$LOG"
find "$DIR" -type f >> "$LOG"
SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
echo "Taille supprimée $SIZE" >> "$LOG"
rm -rf "$DIR">> "$LOG" 2>&1
mkdir -p "$DIR" 
echo "Dossier $DIR recréé" >> "$LOG"
echo "" >> "$LOG"
else 
echo " Rien à supprimer à $(date)" >> "$LOG"
fi

