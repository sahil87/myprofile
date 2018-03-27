# Kubernetes Local Setup

## Install kubectl

> Reference: https://kubernetes.io/docs/tasks/tools/install-kubectl/

```bash
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
```

### Setup up kc alias

`echo "alias kc=kubectl" >> ~/.bashrc`

### Initialize ~/.kube/config file

* `kubectl config set current-context test`
* Make sure the file `~/.kube/config` exists: `cat ~/.kube/config`
