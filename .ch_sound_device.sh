#!/bin/bash
set -euo pipefail # strict mode

activeProfile() { pacmd list-cards | grep "active profile" | cut -d " " -f 3-; }
CURRENT_PROFILE="$(eval activeProfile)"

# If it doesn't work run  pacmd list-cards  and try the other outputs from profile section
ANALOG_PROFILE="output:analog-stereo+input:analog-stereo"
HDMI_PROFILE="output:hdmi-stereo-extra1+input:analog-stereo"

if [ "$CURRENT_PROFILE" = "<output:hdmi-stereo-extra1+input:analog-stereo>" ] ; then
  pacmd set-card-profile 0 "$ANALOG_PROFILE"
else
    pacmd set-card-profile 0 "$HDMI_PROFILE"
fi

activeProfile
