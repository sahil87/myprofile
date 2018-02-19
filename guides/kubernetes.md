# Kubernetes Local Setup

## Install kubectl

Reference: https://kubernetes.io/docs/tasks/tools/install-kubectl/

```bash
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)
/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
```

## Install Minikube

`curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.25.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/`

### Make sure the partition holding ~/.minikube has enough free space

In the following steps:

1. Replace `/mnt/file` with the mount point of the partition the contains enough free space
1. Replace `/storage/minikube` with the folder in that partition where you want to store docker related files

```sh
minikube stop
rm -rf ~/.minikube
#To move an already existing installation:
#mv ~/.minikube /mnt/files/storage/minikube
ln -s /mnt/files/storage/minikube ~/.minikube
```

## Other Useful commands for reference

* Running Minikube: `minikube start` (Needs virtualbox installed)
* Or `sudo minikube start --vm-driver=none` (see https://github.com/kubernetes/minikube/issues/1899)

The above command also creates a kubectl context called minikube.

```sh
kubectl config use-context minikube #minikube start sets this by default, needed if context changes
kubectl run hello-minikube --image=k8s.gcr.io/echoserver:1.4 --port=8080
minikube dashboard
kubectl create -f <directory>
kubectl delete
kubectl run
kubectl expose deployment hello-minikube --type=NodePort
kubectl get pod
curl $(minikube service hello-minikube --url)
kubectl delete service hello-minikube
kubectl delete deployment hello-minikube
minikube stop
minikube delete
```
