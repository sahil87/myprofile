# Libvirt

> https://www.hiroom2.com/2018/08/06/linuxmint-19-kvm-en/

```bash
sudo apt install -y -o 'apt::install-recommends=true' qemu-kvm libvirt0 libvirt-bin virt-manager libguestfs-tools
sudo gpasswd libvirt -a $USER
sudo reboot
sudo apt install libosinfo-bin bridge-utils #virt-viewer gir1.2-spiceclientgtk-3.0
```

## From the client machine

`apt install virt-manager virt-viewer gir1.2-spiceclientgtk-3.0`

## Add storage pool

```bash
mkdir -p /mnt/e/sp/sp1
virsh pool-define-as sp1 dir - - - - "/mnt/e/sp/sp1/"
virsh pool-build sp1
virsh pool-start sp1; virsh pool-autostart sp1;
virsh pool-list --all
virsh pool-info sp1
```

## Install VM

```bash
QS=qemu:///system
virt-install --connect $QS \
--name "node-local-win10-1" \
--metadata title="Local Win10 1",description="Local Win10 1" \
--ram=8096 --vcpus=2 \
--os-type=windows --os-variant=win10 \
--disk path=/mnt/e/sp/sp1/win10-1.qcow2,bus=virtio,cache=none,size=100 \
--disk /mnt/e/sp/install-images/Win10_1809Oct_v2_English_x64.iso,device=cdrom,bus=ide \
--graphics spice \
--network bridge=virbr0,model=virtio \
--cdrom /mnt/e/sp/install-images/virtio-win-0.1.141.iso

#To destroy VM:
# virsh -c $QS destroy node-local-win10-1; virsh -c $QS undefine node-local-win10-1; virsh -c $QS pool-refresh sp1; virsh -c $QS vol-delete --pool sp1 win10-1.qcow2
```

During installation on the Hard Disk selection screen, select "Load Driver"
And browse to the virtio-win cd > viostor > w10 > amd64. Also install NetKVM, qxldod subsequently
After windows installation, install guest-agent (msi installer)
