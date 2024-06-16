Creating a `glusterfs` volume based on a bunch of servers with spare diskspace
----------------------------------------------------------------------------
**Required role:**
  - src: `geerlingguy.glusterfs`

**Example Usage:**
```
ansible-playbook -i inventory/gluster_hosts.yml playbook/glusterfs.yml
```

Default variables, set in inventory
* `glusterfs_ppa_version`: "11"
* `glusterfs_brick_dir`: `/data/brick0`
* `glusterfs_vol_name`: `gstore`
* `glusterfs_mount_dir`: `/mnt/gstore`

On `glusterfs_brick_dir`
-----------------------
This should be a dedicated mounted partition to be used as an exported `brick`.


On hostname
-----------
All hostnames must be resolvable on any server node or client.
