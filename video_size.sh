#!/bin/bash
style1=$(./ffprobe -v error -show_entries stream=width,height -of default=noprint_wrappers=1 ui.mp4)

style2=$(./ffprobe -v error -select_streams v -show_entries stream=width,height -of csv=p=0:s=x ui.mp4)

style3=$(./ffprobe -v error -select_streams v -show_entries stream=width,height -of json ui.mp4)

style4=$(./ffprobe -v error -select_streams v -show_entries stream=width,height -of json=compact=1 ui.mp4)

style5=$(./ffprobe -v error -select_streams v -show_entries stream=width,height -of xml ui.mp4)

printf "Key & Value style:\n%s" "$style1"
printf "\n\nWidth x Height style:\n%s" "$style2"
printf "\n\nJSON style:\n%s" "$style3"
printf "\n\nJSON Compact style:\n%s" "$style4"
printf "\n\nXML style:\n%s" "$style5"