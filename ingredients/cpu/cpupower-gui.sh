#!/bin/bash
#|#install-pkg cpupower-gui #GUI utility to set CPU govenor settings

paru -Syu --noconfirm --needed cpupower-gui

cat <<EOT > "00-cpg.config"	
[Profile]
profile = Balanced

[GUI]
allcpus_default = True
tick_marks_enabled = True
frequency_ticks = True
energy_pref_per_cpu = False
EOT

mkdip -p ~/.config/cpupower_gui
cp 00-cpg.config ~/.config/cpupower_gui/
rm 00-cpg.config

# Enable the user systemd service
systemctl --user enable cpupower-gui-user.service
