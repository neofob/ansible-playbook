```bash
$ ls ./playbooks/my-airgap/
total 248M
-rwxr-xr-x 1 $USER $USER  58M Nov 14 11:28 k3s
-rw-r--r-- 1 $USER $USER 190M Nov 14 11:30 k3s-airgap-images-amd64.tar.gz

$ cat inventory.yml
...
airgap_dir: ./my-airgap # Paths are relative to the playbooks directory
```
