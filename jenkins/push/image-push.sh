#!/bin/bash

IMAGE=java-pipeline-test

echo "****************************************************"
echo "*********Docker HUb Login***************************"
echo "****************************************************"

docker login -u dshivakumar -p $PASSWORD

echo "*********Docker TAG ********************************"

docker tag $IMAGE:$BUILD_VERSION dshivakumar/$IMAGE:$BUILD_VERSION

echo "****************************************************"
echo "*********Pushing Image To Docker HUb ***************"
echo "****************************************************"

docker push dshivakumar/java-pipeline-test:$BUILD_VERSION


