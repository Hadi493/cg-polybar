#!/bin/bash

usage=$(cat /sys/class/drm/card0/gt_busy_percent 2>/dev/null || echo "0")
freq=$(cat /sys/class/drm/card0/gt_cur_freq_mhz 2>/dev/null || echo "N/A")
echo "${usage}% @ ${freq}MHz"
