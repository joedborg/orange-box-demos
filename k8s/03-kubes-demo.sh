#!/bin/bash
set -e

juju expose kubernetes-worker
juju config kubernetes-worker ingress=true > /dev/null 2>&1

OUTPUT=$(juju run-action kubernetes-worker/0 microbot replicas=5)
echo $OUTPUT
GUID=$(echo $OUTPUT | sed 's/Action queued with id: //g')

echo "Sleeping for 5 to allow workload to start..."
sleep 5
juju show-action-output $GUID
