# Helm and Tiller Setup

> Reference: https://github.com/kubernetes/helm

## Helm Local Setup

* Install Helm: [link](https://github.com/kubernetes/helm)
  * `curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash`
* Install Helm S3 plugin:
  ```bash
  mkdir -p ~/.helm/plugins
  helm plugin install https://github.com/hypnoglow/helm-s3.git
   ```
   
## Kubernetes Tiller Installation (DO NOT follow these for local developer machine setups)

* Init Helm to install Tiller on cluster: [link](https://docs.helm.sh/using_helm/#easy-in-cluster-installation)
  * `helm init --upgrade`: This will install Tiller into the Kubernetes cluster `kc config current-context`
  * To make sure we get the latest list of charts: `helm repo update` 
  * To check client and server versions: `helm version` 
  * To get a list of deployments on the default repos: `helm search`
  * Patch tiller to get cluster admin permissions:
    ```sh
    kubectl create serviceaccount --namespace kube-system tiller
    kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
    kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
    ```
