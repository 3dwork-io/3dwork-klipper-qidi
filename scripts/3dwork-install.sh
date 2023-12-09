#!/bin/bash
# This script install additional dependencies

SYSTEMDDIR="/etc/systemd/system"
PKGLIST="python3-numpy python3-matplotlib jq"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

install_dependencies()
{
    report_status "Installing 3Dwork dependencies"
    sudo apt-get update && sudo apt-get install -y $PKGLIST
}

verify_ready()
{
    if [ "$EUID" -eq 0 ]; then
        echo "This script must not run as root"
        exit -1
    fi
}

ensure_ownership() {
  $sudo chown mks:mks -R /home/mks/klipper_config/3dwork-klipper-qidi/scripts
  $sudo chmod 440 /home/mks/klipper_config/3dwork-klipper-qidi/scripts
}

register_gcode_shell_command()
{
    EXT_NAME="gcode_shell_extension"
    EXT_PATH=$(realpath $SCRIPT_DIR/../klippy)
    EXT_FILE="gcode_shell_command.py"
    register_klippy_extension $EXT_NAME $EXT_PATH $EXT_FILE
}

install_klippain-shaketune()
{
	SHAKETUNE_DIR="/home/mks/klippain_shaketune/K-ShakeTune"
    report_status "Installing beacon module..."

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
set -e

verify_ready
ensure_ownership
#install_dependencies
#ensure_sudo_command_whitelisting
register_gcode_shell_command
install_klippain-shaketune