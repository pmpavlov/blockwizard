# Challenge
---------
Service Status : [![Build Status](https://travis-ci.org/pmpavlov/blockwizard.svg?branch=master)](https://travis-ci.org/pmpavlov/blockwizard)

The continaer curreltnly is build with very basic config using travis-ci

```
https://travis-ci.org/pmpavlov/blockwizard
```
and it is pushed to 
```
https://quay.io/repository/ppavlov/blockwizard
```
You can see of tags and the ability to track back to a commit:
```
https://quay.io/repository/ppavlov/blockwizard?tab=tags
```


### Usage

1. To build a local container use:
```
docker build -t blockwizard .
```

2. To run any of the sevices:
```
docker run -it -d -p 16000:16000 -e "mode=broker" quay.io/ppavlov/blockwizard 
docker run -it -d -p 16001:16001 -e "mode=node1" quay.io/ppavlov/blockwizard
docker run -it -d -p 16002:16002 -e "mode=node2" quay.io/ppavlov/blockwizard
```
3. For deploying all of them docker-compose is used with link but we can create also network
```
docker-compose up -d
```

Before continue here i will say as we have already continer with the plication . 
Tha can be deplyed in many ways. We can use ECS , EKS , elasticserch or simple EC2 instances with ELB in front. 
For this test we will create ami and then run in in autoscaling group . We will run the containers as systemctl 
service using docker-compose. A good step will be using travis-ci in this case to run a additional cotainer with 
ansible and boto that will execute the play. 

4. Creating a custom ami with the code 
 
```
ansible-playbook ansible/ami.yml
```
