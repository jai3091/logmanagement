#!/bin/bash
#/************************************************************************************************************
#*       Author       : G JAIKUMAR, jaikumarg91@gmail.com
#*       Purpose      : Build Docker images for Log Management and run the container
#*       Version      : V-1.0
#*************************************************************************************************************
##Setting Environment Variables required for the script
set_env(){
  . ~/.profile
  #set -x
  build_docker_images
}

#Gets repository details as an input and check if it is in the right format
build_docker_images (){
  echo -e "\e[34mINFO :$LINENO: Building nginx docker image with custom landing page \e[0m";
  cd ./nginx
  mkdir -p honestbee_log
  docker build -t honestbee_nginx:1 .
  cd ../fluentd
  echo -e "\e[34mINFO :$LINENO: Building fluentd docker image with required configuration \e[0m";
  docker build -t honestbee_fluentd:1 .
  cd ../
  spawn_docker_container
}

##Finds Repository and fetches the required details
spawn_docker_container(){
  echo -e "\e[34mINFO :$LINENO: Running log management stack \e[0m";
  docker-compose up -d
}
set_env
