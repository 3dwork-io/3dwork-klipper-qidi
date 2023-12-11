#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "ERROR: Please run as root"
  exit
fi

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Script sources for common procedures
source /home/mks/klipper_config/3dwork-klipper-qidi/scripts/3dwork-common.sh

# Force script to exit if an error occurs
set -xe

ensure_sudo_command_whitelisting
install_hooks