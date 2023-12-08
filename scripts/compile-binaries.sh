#!/bin/bash

compile_btt-manta-e3ez() {
    echo "Compiling firmware for BTT Manta E3 EZ"
    /home/mks/klipper_config/
    cp -f /home/mks/klipper_config/3dwork-klipper-qidi/boards/btt-manta-e3ez/firmware.config /home/mks/klipper/.config
    make olddefconfig
    make clean
    make
    cp /home/mks/klipper/out/klipper.bin /home/mks/klipper_config/firmware_binaries/firmware-btt-manta-e3ez.bin
}

# Force script to exit if an error occurs
set -e

if [ ! -d "/home/mks/klipper_config/firmware_binaries" ]
then
    mkdir /home/mks/klipper_config/firmware_binaries
    chown mks:mks /home/mks/klipper_config/firmware_binaries
fi

pushd /home/pi/klipper


# Check the parameter and call the corresponding compilation function
if [ -z "$1" ]; then
    # If no parameter is provided, compile firmware for all boards
    # Run make scripts for the supported boards.
    compile_btt-manta-e3ez
    # Toolheads

else
    compile_function="compile_$1"
    if declare -f "$compile_function" >/dev/null; then
        eval "$compile_function"
    else
        echo "Invalid board selection: $1"
        exit 1
    fi
fi

chown mks:mks /home/mks/klipper_config/firmware_binaries/*.bin

popd
