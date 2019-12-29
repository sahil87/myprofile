# SSH Setup

## Create keys

```bash
ssh-keygen -t ed25519 -f id_ed25519_work-vm         -C sahil@work-vm
ssh-keygen -t ed25519 -f id_ed25519_home-laptop     -C sahil@home-laptop
ssh-keygen -t ed25519 -f id_ed25519_home-dekstop    -C sahil@home-desktop
```

## Copy public ssh

```bash
ssh-copy-id  [-i ~/.ssh/id_ed25519_work-vm.pub] user@remote-server
```
