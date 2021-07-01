#!/bin/bash
function full_upgrade {
    commands=(
        update
        upgrade
        dist-upgrade
        full-upgrade 
        autoclean 
        autoremove
    )

    for cmd in "${commands[@]}"; do
        sudo apt $cmd -y
    done
}

full_upgrade

