# Terraform

```bash
RELEASE=$(lsb_release -cs)
if [ -f /etc/upstream-release/lsb-release ]
then
  . /etc/upstream-release/lsb-release
  RELEASE=$DISTRIB_CODENAME
fi

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com ${RELEASE} main"
sudo apt-get update && sudo apt-get install terraform
```
