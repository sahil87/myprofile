## Install glcoud CLI

### Install

```
. /etc/lsb-release
if [ -f /etc/upstream-release/lsb-release ]
then
  . /etc/upstream-release/lsb-release
fi

export CLOUD_SDK_REPO="cloud-sdk-$DISTRIB_CODENAME"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install google-cloud-sdk
```

### Setup

```sh
gcloud init
```
