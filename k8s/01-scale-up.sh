#!/bin/bash
set -e

juju add-unit kubernetes-worker
watch -cd -n 1 juju status --color
