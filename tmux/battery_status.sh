#!/bin/bash
battery_status=$(cat /sys/class/power_supply/BAT0/status)

# Math for charged hearts
echo "($battery_status)"

