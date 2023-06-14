
#!/bin/bash

current_brightness=$(brightnessctl -d intel_backlight g)
new_brightness=$(awk '{brightness = $1 + 100; if (brightness < 0) brightness = 0; printf "%.0f", brightness}' <<< "$current_brightness")

brightnessctl -d intel_backlight s "$new_brightness"
