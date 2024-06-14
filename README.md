A collection of Ansible playbooks
=================================
* `glusterfs.yml`: Create a glusterfs volume and mount it
  * `glusterfs_create_vol.yml`: Create a glusterfs volume
  * `glusterfs_mount_vol.yml`: Mount the glusterfs volume, this does not have to be the cluster node
* `bootstrap.yml`: install `python3-apt`
* `debug_hosts.yml`: print out hosts vars
* `debug_vars.yml`: print vars
* `docker.yml`: install docker
* `setup_nodes.yml`: setup a node with frequent used packages and other configs
* `upgrade.yml`: run `apt-get dist-upgrade`
* `vagrant.yml`: install vagrant
* `virtualbox.yml`: install virtualbox

Setting up the Ansible environment:
```
mkvirtualenv `which python3` ansible
pip install ansible
ansible-galaxy install -r requirements.yml
```



__author__: *tuan t. pham*
