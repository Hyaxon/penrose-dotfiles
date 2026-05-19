#!/usr/bin/env bash

killall -q polybar

while pgrep -x polybar >/dev/null; do
  sleep 0.1
done

mkdir -p "$HOME/.cache"

polybar main -c "$HOME/.config/polybar/config.ini" >"$HOME/.cache/polybar.log" 2>&1 &
