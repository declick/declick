#!/bin/bash

date_reference="2018-02-13"
date_actuelle=$(date -u "+%Y-%m-%d")
jours=$(( ($(date -d $date_actuelle +%s) - $(date -d $date_reference +%s)) / 86400 ))

# Remplacer le nombre de jours dans le fichier README.md
sed -i "s/Le projet a été créé le [0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\} soit [0-9]\+ jours\./Le projet a été créé le $date_reference soit $jours jours./" README.md
