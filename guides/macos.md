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
EOF

# IdentityAgent "~/.1password/agent.sock"
```

## 5. Clone the private dotfiles repo

```bash
mkdir -p ~/code/sahil87
git clone git@github.com:sahil87/lifetracker.git ~/code/sahil87/lifetracker
git clone git@github.com:sahil87/myprofile.git ~/code/sahil87/myprofile
git clone git@github.com:sahil87/blog2020.git ~/code/sahil87/blog2020
```

## 6. Run the automated setup

```bash
cd ~/code/sahil87/lifetracker
./scripts/setup-macos.sh
```

This will install Homebrew, packages, and configure your environment.
