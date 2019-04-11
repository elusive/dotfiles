#!/usr/bin/env bash

# Setup and configure az cli
echo ''
read -p "Do you want to install Azure CLI? y/n (This will take some time...)" -n 1 -r
echo ''
if [[ $REPLY =~ ^[Yy]$ ]]
then
	echo "Now installing az cli..."
    AZ_REPO=$(lsb_release -cs)
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \
     sudo tee /etc/apt/sources.list.d/azure-cli.list

    sudo apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893
    sudo curl -L https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    sudo apt-get install apt-transport-https
    sudo apt-get update && sudo apt-get install azure-cli
	
    if [[ $? -eq 0 ]]
    then
        echo "Successfully installed Azure CLI 2.0."
    else
        echo "Azure CLI not installed successfully." >&2
    fi
    else 
    echo "You chose not to install Azure CLI. Exiting now."
    fi
