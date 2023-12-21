#!/bin/bash
# This script install additional dependencies

SYSTEMDDIR="/etc/systemd/system"
PKGLIST="python3-venv"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Script sources for common procedures
source /home/mks/klipper_config/3dwork-klipper-qidi/scripts/3dwork-common.sh

report_status()
{
    echo -e "\n\n###### $1"
}

verify_ready()
{
    if [ "$EUID" -eq 0 ]; then
        echo "This script must not run as root"
        exit -1
    fi
}

install_dependencies()
{
    report_status "Installing 3Dwork dependencies"
    sudo apt-get update && sudo apt-get install -y $PKGLIST
}

register_gcode_shell_command()
{
    report_status "Register Gcode Shell Command... Installing"
    cp /home/mks/klipper_config/3dwork-klipper-qidi/klippy/gcode_shell_command.py /home/mks/klipper/klippy/extras/
    report_status "Register Gcode Shell Command... Success!!!"
}

install_klippain_shaketune()
{
	SHAKETUNE_DIR="/home/mks/klippain_shaketune/K-ShakeTune"
    report_status "Installing Klippain Shaketune module..."

	if [ -d "$SHAKETUNE_DIR" ]; then
		echo "Klippain Shaketune: already installed, skipping..."
		return
	fi

	# install klippain shaketune from script
    report_status "Installing Klippain Shaketune"
    sudo wget -O - https://raw.githubusercontent.com/Frix-x/klippain-shaketune/main/install.sh | bash

	# symbolic link klippain shaketune to klipper config directory
    report_status "Creating symbolic link klippain shaketune to klipper config directory"
    sudo ln -sf /home/mks/klippain_shaketune/K-ShakeTune/ /home/mks/klipper_config/K-ShakeTune

}

# Force script to exit if an error occurs
set -xe

verify_ready
install_hooks
install_dependencies
ensure_sudo_command_whitelisting
register_gcode_shell_command
# install_klippain_shaketune
