# Allocating Swap space from the local filesystem

```bash
sudo su
fallocate -l 4G /swapfile4G #OR  dd if=/dev/zero of=/swapfile bs=1M count=1024
chmod 600 /swapfile4G
mkswap /swapfile4G
swapon /swapfile4G
echo "/swapfile4G    swap    swap    defaults    0 0"  | sudo tee -a /etc/fstab > /dev/null
```
