# Using Ubuntu 20.04 LTS
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    build-essential \
    cmake \
    nodejs \
    python3 \
    npm \
    git \
    curl \
    sudo \
    wget \
    unzip \
    python3-pip

######################
# NODE AND NPM CONFIG
######################

RUN sudo npm cache clean -f

# INSTALL NODE12
RUN sudo npm install -g n
RUN sudo n 12

################
# APPIUM CONFIG
################

# INSTALL APPIUM
RUN npm i -g appium --unsafe-perm=true --allow-root
RUN npm i -g appium-doctor --unsafe-perm=true --allow-root

#######################
# OPENCV CONFIGURATION
#######################

# INSTALL OPENCV4NODEJS
#RUN npm i -g opencv4nodejs --unsafe-perm=true --allow-root

# FIX NODE_MODULES PATH
ENV NODE_PATH=/usr/local/lib/node_modules/

RUN appium &

#############################
# PIP INSTALL PYTHON MODULES
#############################
#RUN pip3 install pytest
#RUN pip3 install allure-pytest
#RUN pip3 install Appium-Python-Client