#!/bin/bash

current_volume=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n 1 | awk '{print $5}' | sed 's/%//')
new_volume=$((current_volume + 10))

# Ensure the new volume doesn't go below 0
if [ $new_volume -lt 0 ]; then
  new_volume=0
fi

pactl set-sink-volume @DEFAULT_SINK@ "${new_volume}%"
