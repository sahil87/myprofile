# Helm Local Setup

> Reference: https://github.com/kubernetes/helm

## Install helm

```bash
curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get | bash
```

* Install Helm S3 plugin:

```bash
mkdir -p ~/.helm/plugins
helm plugin install https://github.com/hypnoglow/helm-s3.git
 ```
 