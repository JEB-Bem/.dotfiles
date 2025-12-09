hyprctl dispatch settiled
st htop &
sleep 1
hyprctl dispatch focuswindow title:htop
hyprctl activewindow
hyprctl --batch "dispatch setfloating title:htop;dispatch resizewindowpixel exact 867 500,title:htop;"
