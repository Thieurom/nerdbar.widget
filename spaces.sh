#!/bin/sh

kwmc=/usr/local/bin/kwmc

active=$($kwmc query space active id)
total=$($kwmc query space list | grep -o , | wc -l)
echo "$active | $total"
