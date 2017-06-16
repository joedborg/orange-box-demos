#!/bin/bash
set -e

juju bootstrap --config bootstrap-timeout=1200 --to node00vm0ob52.maas maas
juju enable-ha --to node00vm1ob52.maas,node00vm2ob52.maas
juju deploy cs:bundle/canonical-kubernetes-38
watch -cd -n 1 juju status --color
