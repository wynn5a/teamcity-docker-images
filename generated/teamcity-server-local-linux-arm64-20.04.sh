#!/bin/bash
cd ..
docker pull ubuntu:20.04
echo TeamCity/buildAgent > context/.dockerignore
echo TeamCity/temp >> context/.dockerignore
docker build -f "generated/linux/Server/UbuntuARM/20.04/Dockerfile" -t wayne5aw/teamcity-server:arm64-20.04 "context"
