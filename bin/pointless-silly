#!/bin/bash

DATA[0]="     _/  _/    _/                            _/    "
DATA[1]="  _/_/_/_/_/  _/_/_/      _/_/_/    _/_/_/  _/_/_/ "
DATA[2]="   _/  _/    _/    _/  _/    _/  _/_/      _/    _/"
DATA[3]="_/_/_/_/_/  _/    _/  _/    _/      _/_/  _/    _/ "
DATA[4]=" _/  _/    _/_/_/      _/_/_/  _/_/_/    _/    _/  "

# virtual coordinate system is X*Y ${#DATA} * 5

REAL_OFFSET_X=0
REAL_OFFSET_Y=0

draw_char() {
  V_COORD_X=$1
  V_COORD_Y=$2

  tput cup $((REAL_OFFSET_Y + V_COORD_Y)) $((REAL_OFFSET_X + V_COORD_X))

  printf %c ${DATA[V_COORD_Y]:V_COORD_X:1}
}


trap 'exit 1' INT TERM
trap 'tput setaf 9; tput cvvis; clear' EXIT

tput civis
clear

while :; do

for ((c=1; c <= 7; c++)); do
  tput setaf $c
  for ((x=0; x<${#DATA[0]}; x++)); do
    for ((y=0; y<=4; y++)); do
      draw_char $x $y
    done
  done
done

done
