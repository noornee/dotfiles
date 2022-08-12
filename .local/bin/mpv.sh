#!/bin/bash

# switches mpv audio-device to hdmi
mpv --audio-device='alsa/hdmi:CARD=NVidia,DEV=0' "$1"

