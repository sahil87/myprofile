# SSH Setup

## Create keys

```bash
#For ed25519
ssh-keygen -t ed25519 -f id_ed25519_work            -C "$(whoami)@work-$(date -I)"
ssh-keygen -t ed25519 -f id_ed25519_personal        -C "$(whoami)@personal-$(date -I)"

#For rsa
ssh-keygen -t rsa -b 4096 -f id_rsa                 -C "$(whoami)@work-$(date -I)"
```

## Copy public ssh

```bash
ssh-copy-id  [-i ~/.ssh/id_ed25519_work-vm.pub] user@remote-server
```
