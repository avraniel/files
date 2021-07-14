#!/bin/bash
#set -e


wal -c; wal -i /home/niel/DATA/wallpapers/; feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"; spicetify update; spicetify apply -n; 
# wal -c; wal -i /home/niel/DATA/wallpapers/; nitrogen --random --set-auto /home/niel/DATA/wallpapers/; "$(< "${HOME}/.cache/wal/wal")"

#echo "done"



