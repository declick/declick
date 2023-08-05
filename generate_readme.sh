#!/bin/bash

date_reference="2018-02-13"
date_actuelle=$(date -u "+%Y-%m-%d")
jours=$(( ($(date -d $date_actuelle +%s) - $(date -d $date_reference +%s)) / 86400 ))

cat template/README.md.tpl | sed "s/{{DAYS_SINCE_CREATION}}/$jours/" > README.md
