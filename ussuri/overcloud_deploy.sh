#!/bin/bash

openstack overcloud deploy \
--timeout 240 \
--templates /usr/share/openstack-tripleo-heat-templates \
--ntp-server clock1.rdu2.redhat.com \
--stack overcloud \
--libvirt-type kvm \
--deployed-server \
-e /home/stack/templates/overcloud-vip-deployed.yaml \
-e /home/stack/templates/overcloud-networks-deployed.yaml \
-e /home/stack/templates/overcloud-baremetal-deployed.yaml \
-e /home/stack/templates/overcloud-ceph-deployed.yaml \
--disable-protected-resource-types \
--networks-file /home/stack/virt/network/network_data_v2.yaml \
-e /home/stack/virt/internal.yaml \
-e /home/stack/virt/network/network-environment_v2.yaml \
-e /home/stack/virt/hostnames.yml \
-e /usr/share/openstack-tripleo-heat-templates/environments/cephadm/cephadm.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/services/neutron-ovn-ha.yaml \
-e /home/stack/virt/debug.yaml \
-e /home/stack/virt/nodes_data.yaml \
-e ~/containers-prepare-parameter.yaml \
-e /home/stack/virt/docker-images.yaml \
--log-file overcloud_deployment_52.log
