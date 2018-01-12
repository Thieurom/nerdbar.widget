#!/bin/sh

chunkc=/usr/local/bin/chunkc

active=$($chunkc tiling::query --desktop id)
total=$($chunkc tiling::query --desktops-for-monitor 1 | wc -w)
echo "$active | $total"
