#!/bin/sh



# Generated by: tyk-ci/wf-gen
# Generated on: Monday 07 February 2022 06:42:52 AM UTC

# Generation commands:
# ./pr.zsh -repos tyk -base exp/el7-builds -branch exp/el7-builds -base exp/el7-builds -title Sync from templates -p
# m4 -E -DxREPO=tyk


if command -V systemctl >/dev/null 2>&1; then
    if [ ! -f /lib/systemd/system/tyk-gateway.service ]; then
        cp /opt/tyk-gateway/install/inits/systemd/system/tyk-gateway.service /lib/systemd/system/tyk-gateway.service
    fi
else
    if [ ! -f /etc/init.d/tyk-gateway ]; then
        cp /opt/tyk-gateway/install/inits/sysv/init.d/tyk-gateway /etc/init.d/tyk-gateway
    fi
fi
