#!/bin/sh

# Generated by: gromit policy
# Generated on: Wed May 10 08:31:45 UTC 2023

if command -V systemctl >/dev/null 2>&1; then
    if [ ! -f /lib/systemd/system/tyk-gateway.service ]; then
        cp /opt/tyk-gateway/install/inits/systemd/system/tyk-gateway.service /lib/systemd/system/tyk-gateway.service
    fi
else
    if [ ! -f /etc/init.d/tyk-gateway ]; then
        cp /opt/tyk-gateway/install/inits/sysv/init.d/tyk-gateway /etc/init.d/tyk-gateway
    fi
fi
