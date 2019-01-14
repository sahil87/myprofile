# Kubernetes Local Setup

## Install kubectl

> Reference: https://kubernetes.io/docs/tasks/tools/install-kubectl/

```bash
sudo apt update && sudo apt install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo su
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt update
sudo apt install -y kubectl
```

#### OR install from gcloud components

```gcloud components install kubectl```

### Setup up kc alias

`echo "alias kc=kubectl" >> ~/.bashrc`

### Initialize ~/.kube/config file

* `kubectl config set current-context test`
* Make sure the file `~/.kube/config` exists: `cat ~/.kube/config`
