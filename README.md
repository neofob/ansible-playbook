A collection of Ansible playbooks
=================================
* `glusterfs.yml`: Create a glusterfs volume and mount it
  * `glusterfs_create_vol.yml`: Create a glusterfs volume
  * `glusterfs_mount_vol.yml`: Mount the glusterfs volume, this does not have to be the cluster node

Setting up the Ansible environment:
```
mkvirtualenv `which python3` ansible
pip install ansible
ansible-galaxy install -r requirements.yml
```

__author__: *tuan t. pham*
