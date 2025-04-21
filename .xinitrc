exec bspwm &
#!/bin/sh

# Set X environment
export DESKTOP_SESSION=bspwm
export XDG_CURRENT_DESKTOP=bspwm

# Launch compositor if available
command -v picom >/dev/null && picom &

# Start the window manager
if command -v bspwm >/dev/null; then
  exec bspwm
else
  echo "bspwm not found. Dropping to shell."
  exec xterm
fi

komorebi --config ~/.config/komorebi/config.json &
