# Disable touchpad Natural Scroll
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
# 12 Hour clock Format
gsettings set org.gnome.desktop.interface clock-format '12h'   
# Add Arabic keyboard
gsettings set org.gnome.desktop.input-sources sources  "[('xkb', 'us'), ('xkb', 'ara')]" 
# Show Battery Percentage
gsettings set org.gnome.desktop.interface show-battery-percentage true
# Hide dock
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
# Enable Night Light
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
# Show Weekday
gsettings set org.gnome.desktop.interface clock-show-weekday true
# Hot corner
gsettings set org.gnome.desktop.interface enable-hot-corners true

