# Challenge
---------
Service Status : [![Build Status](https://travis-ci.org/pmpavlov/blockwizard.svg?branch=master)](https://travis-ci.org/pmpavlov/blockwizard)

The continaer curreltnly is build with very basic config using travis-ci

```
https://travis-ci.org/pmpavlov/blockwizard
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

4. Deploying andsible 
