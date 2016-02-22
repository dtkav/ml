#!/bin/bash
ssh -O check -o ControlPath="$PWD/ml_tun_ctl" root@$DROPLET_IP
