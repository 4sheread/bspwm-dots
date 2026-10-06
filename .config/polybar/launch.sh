#!/bin/bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar example 2>&1 | tee /tmp/polybar.log & disown
