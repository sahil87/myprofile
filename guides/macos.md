# macOS Setup Guide

Bootstrap a new MacBook with dotfiles and development environment.

## 1. Install 1Password

Download and install from https://1password.com

## 2. Enable SSH Agent

1Password Settings → Developer → Enable SSH Agent

## 3. Set up 1Password SSH socket

```bash
mkdir -p ~/.1password ~/.ssh
ln -sf ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock ~/.1password/agent.sock

# Save public keys
SSH_AUTH_SOCK=~/.1password/agent.sock ssh-add -L | grep "sahil87" > ~/.ssh/id_ed25519_sahil87.pub
chmod 600 ~/.ssh/id_ed25519_sahil87.pub
SSH_AUTH_SOCK=~/.1password/agent.sock ssh-add -L | grep "sahil-weaver" > ~/.ssh/id_ed25519_sahil-weaver.pub
chmod 600 ~/.ssh/id_ed25519_sahil-weaver.pub
```

## 4. Configure SSH to use 1Password

```bash
cat >> ~/.ssh/config << EOF
# Temporary: using a public key file instead of SSH Agent
Host *
  IdentityFile "~/.ssh/id_ed25519_sahil87"
#  IdentityAgent "~/.1password/agent.sock"
EOF
```

## 5. Clone the private dotfiles repo

```bash
xcode-select --install # to install git

mkdir -p ~/code/bootstrap
git clone git@github.com:sahil87/lifetracker.git ~/code/bootstrap/lifetracker
git clone git@github.com:sahil87/myprofile.git ~/code/bootstrap/myprofile
git clone git@github.com:sahil87/blog2020.git ~/code/bootstrap/blog2020
# Later:
# git clone git@github.com:sahil-weaver/prompt-pantry.git ~/code/bootstrap/prompt-pantry
# git clone git@github.com:wvrdz/dev-shell.git ~/code/bootstrap/dev-shell
# ln -s ~/code/bootstrap/lifetracker/workspaces ~/code/workspaces 
```

## 6. The next guide

Read the macos-setup.md guide in lifetracker
