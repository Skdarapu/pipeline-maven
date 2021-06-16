#!/bin/bash

export BUILD_VERSION=$(sed -n '2p' /tmp/.auth)
export PASSWORD=$(sed -n '3p' /tmp/.auth)


echo "************************************"
echo "*********Docker HUb Login***************************"
echo "****************************************************"

docker login -u dshivakumar -p $PASSWORD

echo "****************************************************"
echo "*********Doker Pull On Prod************* ***************"
echo "****************************************************"

cd /Maven && docker-compose up -d

