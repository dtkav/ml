#!/bin/bash
CONTAINER=ml
RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER 2> /dev/null)

if [[ $RUNNING == "false" ]]; then
    ssh root@$DROPLET_IP mkdir -p /root/ml
    scp Dockerfile root@$DROPLET_IP:/root/ml/
    ssh root@$DROPLET_IP /bin/bash <<EOF
  cd /root/ml
  docker build -t ml .
  docker run -d -v /root/ml/:/ml -p 8888:8888 ml /run_jupyter.sh
EOF
fi
./do tools/tun_up.sh
