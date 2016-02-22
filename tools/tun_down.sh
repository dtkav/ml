#!/bin/bash
ssh -O exit -o ControlPath="$PWD/ml_tun_ctl" root@$DROPLET_IP
