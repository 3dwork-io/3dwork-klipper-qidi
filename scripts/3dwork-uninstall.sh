#!/bin/bash
# This script install additional dependencies

SYSTEMDDIR="/etc/systemd/system"
PKGLIST="python3-numpy python3-matplotlib jq"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

source /home/mks/klipper_config/3dwork-klipper-qidi/scripts/3dwork-install.sh

uninstall_3dwork-klipper-qidi()
{
    if [ "$EUID" -eq 0 ]; then
        echo "This script must not run as root"
        exit -1
    fi
}

# Force script to exit if an error occurs
set -e

verify_ready
ensure_ownership
uninstall_3dwork-klipper-qidi