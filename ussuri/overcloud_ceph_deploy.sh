#!/bin/bash

# TODO(fultonj):
# - remove --container-namespace line after BZ 2042973 resolved
# - replace --config w/ --singe-node after BZ 2036868 resolved

openstack overcloud ceph deploy \
-o /home/stack/templates/overcloud-ceph-deployed.yaml \
--container-image-prepare "/home/stack/containers-prepare-parameter.yaml" \
--container-namespace 192.168.24.1:8787/rh-osbs \
 \
--stack "overcloud" \
--network-data "/home/stack/virt/network/network_data_v2.yaml" \
 \
/home/stack/templates/overcloud-baremetal-deployed.yaml
