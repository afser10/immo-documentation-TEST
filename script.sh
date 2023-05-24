#!/bin/bash

if [ $(docker ps -aq --filter=ancestor=immo-docs:latest | wc -l) -ne 0 ] 
then
	docker container rm -f $(docker ps -aq --filter=ancestor=immo-docs:latest);
else 
	echo "Image has not any containers"	
fi
