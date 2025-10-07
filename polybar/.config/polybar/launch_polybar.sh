# launch script for polybar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload michiel &
  done
else
  polybar --reload michiel &
fi
