#!/bin/bash


oc project demo

# frontweb  ------------------------------------------
oc apply -f ./istio/Gateway.yml
oc apply -f ./istio/VirtualService.yml



# frontweb  ------------------------------------------
oc apply -f ./frontweb/ImageStream.yml
oc apply -f ./frontweb/BuildConfig.yml
oc apply -f ./frontweb/Service.yml
oc apply -f ./frontweb/DestinationRule.yml
oc apply -f ./frontweb/VirtualService.yml
oc apply -f ./frontweb/Deployment.yml
#oc apply -f ./frontweb/DeploymentConfig.yml


# backweb1  ------------------------------------------
oc apply -f ./backweb1/ImageStream.yml
oc apply -f ./backweb1/BuildConfig.yml
oc apply -f ./backweb1/BuildConfig_v11.yml
oc apply -f ./backweb1/Service.yml
oc apply -f ./backweb1/DestinationRule.yml
oc apply -f ./backweb1/VirtualService.yml
oc apply -f ./backweb1/Deployment.yml
oc apply -f ./backweb1/Deployment_v11.yml
#oc apply -f ./backweb1/DeploymentConfig.yml
#oc apply -f ./backweb1/DeploymentConfig_v11.yml


# backweb2 ------------------------------------------
oc apply -f ./backweb2/ImageStream.yml
oc apply -f ./backweb2/BuildConfig.yml
oc apply -f ./backweb2/Service.yml
oc apply -f ./backweb2/DestinationRule.yml
oc apply -f ./backweb2/VirtualService.yml
oc apply -f ./backweb2/Deployment.yml
#oc apply -f ./backweb2/DeploymentConfig.yml



# mysql   ------------------------------------------
oc apply -f ./mysql/ImageStream.yml
oc apply -f ./mysql/pvc.yml
oc apply -f ./mysql/BuildConfig.yml
oc apply -f ./mysql/Service.yml
oc apply -f ./mysql/DeploymentConfig.yml



# restdb  ------------------------------------------
oc apply -f ./restdb/ImageStream.yml
oc apply -f ./restdb/BuildConfig.yml
oc apply -f ./restdb/Service.yml
oc apply -f ./restdb/DestinationRule.yml
oc apply -f ./restdb/VirtualService.yml
oc apply -f ./restdb/Deployment.yml
#oc apply -f ./restdb/DeploymentConfig.yml


oc project cds












