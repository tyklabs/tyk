#!/bin/bash



# Generated by: tyk-ci/wf-gen
# Generated on: Monday 07 February 2022 06:42:52 AM UTC

# Generation commands:
# ./pr.zsh -repos tyk -base exp/el7-builds -branch exp/el7-builds -base exp/el7-builds -title Sync from templates -p
# m4 -E -DxREPO=tyk


echo "Creating user and group..."
GROUPNAME="tyk"
USERNAME="tyk"

getent group "$GROUPNAME" >/dev/null || groupadd -r "$GROUPNAME"
getent passwd "$USERNAME" >/dev/null || useradd -r -g "$GROUPNAME" -M -s /sbin/nologin -c "Tyk service user" "$USERNAME"


# This stopped being a symlink in PR #3569
if [ -L /opt/tyk-gateway/coprocess/python/proto ]; then
    echo "Removing legacy python protobuf symlink"
    rm /opt/tyk-gateway/coprocess/python/proto
fi
