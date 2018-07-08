# Ingress installation through helm

* Install NGINX Ingress controller using helm: [link](https://github.com/kubernetes/ingress-nginx/blob/master/docs/deploy/index.md#using-helm)
  * `helm install stable/nginx-ingress -n my-ingress --namespace kube-system -f k/nginx-ingress-values.yml`
* Verify by `kubectl get pods --all-namespaces -l app=nginx-ingress --watch`
* Get external IP: `kubectl --namespace kube-system get services -o wide -w my-ingress-nginx-ingress-controller`
* The external IP may take a few minutes to show up after the setup. Use this IP address for the cluster hostname (*.cluster.com and cluster.com) in the DNS.
