#!/bin/bash

# copy Jar
cp -f ./app/target/*.jar ./jenkins/build/app.jar

# Build Docker file
cd ./jenkins/build && docker-compose -f docker-compose-build.yml build --no-cache
