#!/bin/bash

HEART='♥'
current_charge=$(cat /sys/class/power_supply/BAT0/capacity)
heart_slots=10

# Math for charged hearts
charged_hearts=$(echo "($current_charge/$heart_slots)+1" | bc -l | cut -d '.' -f1)

# Printing Red Hearts
for i in `seq 1 $charged_hearts`; do echo -n "$HEART "; done

# Printing Percentage
echo "$current_charge%"
