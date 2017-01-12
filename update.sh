#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

files=(
  11-Mid-Night.png
  12-Late-Night.png
  01-Early-Morning.png
  02-Mid-Morning.png
  03-Late-Morning.png
  04-Early-Afternoon.png
  05-Mid-Afternoon.png
  06-Late-Afternoon.png
  07-Early-Evening.png
  08-Mid-Evening.png
  09-Late-Evening.png
  10-Early-Night.png
)

#Timings for the backgrounds in order. Your life may vary.
timing=(11 10 9 8 7 6 5 4 3 2 1 0)

hour=`date +%H`
hour=$(echo $hour | sed 's/^0//')

for i in "${timing[@]}"; do # Loop backwards through the wallpapers
  if (( $hour >= $(($i*2)) )); then
    feh --bg-fill $DIR/*/${files[i]}
    echo "Wallpaper set to ${files[i]}"
    exit
  fi
done
