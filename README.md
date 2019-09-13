Challenge
---------
Service Status : [![Build Status](https://travis-ci.org/pmpavlov/blockwizard.svg?branch=master)](https://travis-ci.org/pmpavlov/blockwizard)

To build a local container use:
docker build -t blockwizard .

To run any of the sevices:
docker run -it -d -p 16000:16000 -e "mode=broker" quay.io/ppavlov/blockwizard 
docker run -it -d -p 16001:16001 -e "mode=node1" quay.io/ppavlov/blockwizard
docker run -it -d -p 16002:16002 -e "mode=node2" quay.io/ppavlov/blockwizard
