#!/bin/bash
# This script install additional dependencies

SYSTEMDDIR="/etc/systemd/system"
PKGLIST="python3-numpy python3-matplotlib jq"

source /home/pi/printer_data/config/3dwork-klipper/scripts/3dwork-common.sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

install_dependencies()
{
    report_status "Installing 3Dwork dependencies"
    sudo apt-get update && sudo apt-get install -y $PKGLIST
}

install_udev_rules()
{
    report_status "Installing udev rules"
    sudo ln -s /home/pi/printer_data/config/3dwork-klipper/boards/*/*.rules /etc/udev/rules.d/
}

verify_ready()
{
    if [ "$EUID" -eq 0 ]; then
        echo "This script must not run as root"
        exit -1
    fi
}

register_gcode_shell_command()
{
    EXT_NAME="gcode_shell_extension"
    EXT_PATH=$(realpath $SCRIPT_DIR/../klippy)
    EXT_FILE="gcode_shell_command.py"
    register_klippy_extension $EXT_NAME $EXT_PATH $EXT_FILE
}

install_beacon()
{
	KLIPPER_DIR="/home/pi/klipper"
	KLIPPER_ENV="/home/pi/klippy-env"
	BEACON_DIR="/home/pi/beacon"
    report_status "Installing beacon module..."

	if [ -d "$BEACON_DIR" ] || [ -e "$KLIPPER_DIR/klippy/extras/beacon.py" ]; then
		echo "beacon: beacon already installed, skipping..."
		return
	fi

	if [ ! -d "$KLIPPER_DIR" ] || [ ! -d "$KLIPPER_ENV" ]; then
		echo "beacon: klipper or klippy env doesn't exist"
		return
	fi

	pushd "/home/pi" || return
	git clone https://github.com/beacon3d/beacon_klipper.git beacon
	chown -R pi:pi beacon
	popd || return

	# install beacon requirements to env
	echo "beacon: installing python requirements to env."
	"${KLIPPER_ENV}/bin/pip" install -r "${BEACON_DIR}/requirements.txt"

	# update link to beacon.py
	echo "beacon: registering beacon with the configurator."
	register_klippy_extension "beacon" "$BEACON_DIR" "beacon.py"

}

# Force script to exit if an error occurs
set -e

verify_ready
install_hooks
#install_dependencies
ensure_sudo_command_whitelisting
register_gcode_shell_command