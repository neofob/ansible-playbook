#!/usr/bin/env bash
# Example:
# time INVENTORY=./inventory/k3s.yml ./provision.sh k3s_cluster
set -e

INVENTORY=${INVENTORY=-"./inventory/my_rack.yml"}

echo "Setting up node(s) $@"
ansible -i ${INVENTORY} $@ -m ping
ansible-playbook -i ${INVENTORY} --limit=$@ playbook/bootstrap.yml
ansible-playbook -i ${INVENTORY} --limit=$@ playbook/upgrade.yml
ansible-playbook -i ${INVENTORY} --limit=$@ playbook/setup_nodes.yml
ansible-playbook -i ${INVENTORY} --limit=$@ playbook/install_docker_ubuntu.yml
ansible-playbook -i ${INVENTORY} --limit=$@ playbook/add_docker_group.yml
ansible-playbook -i ${INVENTORY} --limit=$@ playbook/metrics.yml
ansible-playbook -i ${INVENTORY} --limit=$@ playbook/docker-compose.yml
#ansible-playbook -i ${INVENTORY} --limit=$@ playbook/mdadm.yml
#ansible-playbook -i ${INVENTORY} --limit=$@ playbook/glusterfs-server.yml
