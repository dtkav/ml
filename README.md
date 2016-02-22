## Getting Started
I'm working on the Udacity Machine Learning course.
It took a little while to get a decent working environment up and running so i'm documenting it here.

### Spin up an ubuntu droplet
I used an ubuntu droplet on digital ocean.
It's worth getting the 16GB of ram.

Install docker on the droplet.
```
apt-get install docker.io
```

### Create a dev.env file
It should look like this:
```
DIGITAL_OCEAN_TOKEN=YOUR_TOKEN_HERE
DROPLET_IP=111.112.122.222
```

### Run it
```
./do remote_nb.sh
```

## Tools
### do
`do` is a wrapper that sources your dev.env file and then executes the next argument.

#### do tools/tun_up.sh
creates an ssh tunnel and port forwards jupyter notebook to your local machine.

#### do tools/tun_check.sh
check the status of the tunnel

#### do tools/tun_down.sh
kill the ssh tunnel
