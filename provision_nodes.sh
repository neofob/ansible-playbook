#!/usr/bin/env bash
set -e

echo "Setting up node(s) $@"
ansible -i inventory/my_rack.yml $@ -m ping
ansible-playbook -i inventory/my_rack.yml --limit=$@ playbook/bootstrap.yml
ansible-playbook -i inventory/my_rack.yml --limit=$@ playbook/upgrade.yml
ansible-playbook -i inventory/my_rack.yml --limit=$@ playbook/setup_nodes.yml
ansible-playbook -i inventory/my_rack.yml --limit=$@ playbook/install_docker_ubuntu.yml
ansible-playbook -i inventory/my_rack.yml --limit=$@ playbook/metrics.yml
ansible-playbook -i inventory/my_rack.yml --limit=$@ playbook/add_docker_group.yml
ansible-playbook -i inventory/my_rack.yml --limit=$@ playbook/docker-compose.yml
