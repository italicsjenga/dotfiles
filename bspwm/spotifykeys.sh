#!/bin/sh

case $1 in
   "play")
       playerctl play-pause
       ;;
   "next")
       playerctl next
       ;;
   "prev")
       playerctl previous
       ;;
   *)
       echo "Usage: $0 play|next|prev"
       exit 1
        ;;
esac
exit 0
