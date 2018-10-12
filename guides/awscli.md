# Installing AWS CLI

## For AWS ec2.py and other AWS commands to work

```sh
sudo apt-get install -y python python-dev python-pip python3 python3-dev python3-setuptools python3-pip python3-wheel
pip3 install --upgrade --user boto
pip3 install --upgrade --user awscli
```

## Configure AWS

`aws configure`

Enter your AWS Access Key ID, AWS Secret Access Key and a default region name. ( For Mumbai the region name is `ap-south-1` )

## Other useful notes

To login to ECR docker service:

``` `aws ecr get-login --no-include-email --region ap-south-1` ```
(Include the backticks)

`aws logs create-log-group --log-group-name awslogs-jenkins --region ap-south-1`

To configure: https://console.aws.amazon.com/cloudwatch/

