#!/bin/bash

echo "******************************************************"
echo "**************Starting Build Process******************"
echo "******************************************************"

WORKSPACE=/home/shiv/Workplace/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v /root/.m2:/root/.m2 -v $WORKSPACE/app:/app -w /app maven "$@" 
