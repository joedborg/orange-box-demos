# Orange Box Demos

## K8s

* `00` Bootstrap Juju in HA (to fill the 3 VMs on OB), deploy Canonical
Distribution of Kubernetes bundle and launch juju status inside watch.

* `01` CDK bundle will populate all but 1 of the OB nodes - demonstrate
scaling out another worker onto the remaining node.  Launch juju status inside
watch to demonstrate the machine and unit coming up.

* `02` Copy k8s config from master and run proxy to provide access to the
k8s dashboard.
* `03` Start microbox demo workload and print address to browse to (you will
need access to the OB network; usually via sshuttle).

* `99` Burn everything to the ground.

