#!/bin/bash

WORKSPACE=/home/shiv/Workplace/jenkins-data/jenkins_home/workspace/pipeline-docker-maven
echo "************************************"

echo MAVEN_PROJECT > /tmp/.auth
echo $BUILD_VERSION >> /tmp/.auth
echo $PASSWORD >> /tmp/.auth

echo "****************************************************"
 
scp -i /opt/prod /tmp/.auth ubuntu@13.233.201.11:/tmp/.auth

scp -i /opt/prod $WORKSPACE/jenkins/deploy/image.sh ubuntu@13.233.201.11:/tmp

ssh -i /opt/prod ubuntu@13.233.201.11 "/tmp/image.sh"
