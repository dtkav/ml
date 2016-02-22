#!/usr/bin/bash
# wrapper that sources an environment file and executes any arguments
export PATH=$PWD:$PATH
set -a # force export
. dev.env
set +a # turn off force export
$@
