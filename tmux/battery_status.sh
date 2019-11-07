#!/bin/bash
battery_status=$(pmset -g batt | grep [0-9][0-9]% | awk 'NR==1{print$4}' | rev | cut -c 2- | rev)

# Math for charged hearts
echo "($battery_status)"

