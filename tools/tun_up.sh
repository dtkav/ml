#!/bin/bash
set -e
if [[ -e $PWD/ml_tun_ctl ]]; then
    RUNNING=$(ssh -O check -o ControlPath="$PWD/ml_tun_ctl" root@$DROPLET_IP)
    echo "$RUNNING"
    exit 0
fi
ssh -N -M -S $PWD/ml_tun_ctl -f -L localhost:8080:localhost:8888 root@$DROPLET_IP > /dev/null
netstat -tulpn | grep 8080

