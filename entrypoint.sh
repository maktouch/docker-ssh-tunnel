#!/bin/sh
set -e

chmod 600 /sshtunnel_rsa

/usr/bin/autossh -M 0 -T -N -g -v -oStrictHostKeyChecking=no -oServerAliveInterval=180 -oUserKnownHostsFile=/dev/null -oGlobalKnownHostsFile=/dev/null -i/sshtunnel_rsa $@