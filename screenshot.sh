#!/bin/bash

# Get date, format YYYYMMDD_HHMMSS
timestamp=$(date +%Y%m%d_%H%M%S)

# Generate filename
filename="/home/sdk/Pictures/fbcat/screenshot_${timestamp}.ppm"

# Yeah this while loop doesn't work, as long as you don't
# take more than 2 screenshots per second, it shouldn't be an issue.
# You can always fix it tho.
#
# Check for collisions (file with same name already existing)
#counter=1
#while [: -e "$filename"]; do
#	filename="/home/sdk/Pictures/fbcat/screenshot_${timestamp}_${counter}.ppm"
#((counter++))
#done

# Take the mufukin screenshot and get out
fbcat > "$filename"

# this custom response was brought to you by none other than chatGPT
# I'm not creative enough
echo "Affirmative! Screenshot successfully captured and stored as: $filename. Beep boop!"
