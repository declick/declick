
date_reference="2018-02-13"
date_actuelle=$(date -u "+%Y-%m-%d")
jours=$(( ($(date -d $date_actuelle +%s) - $(date -d $date_reference +%s)) / 86400 ))

cat << EOF > README.md
Le projet a été créé le 2018-02-13 soit $jours jours.
EOF
