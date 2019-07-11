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

