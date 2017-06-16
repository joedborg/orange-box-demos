#!/bin/bash
set -e

juju scp kubernetes-master/0:config ~/.kube/config
juju config kubernetes-master enable-dashboard-addons=true > /dev/null 2>&1
kubectl proxy --address 0.0.0.0 --accept-hosts '.*'
