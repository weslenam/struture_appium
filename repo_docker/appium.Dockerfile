FROM appium/appium

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    build-essential \
    cmake \
    git \
    wget \
    unzip

RUN npm cache clean -f

# INSTALL NODE12
RUN npm install -g n
RUN n 12

RUN PATH=$PATH

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
RUN npm i -g opencv4nodejs --unsafe-perm=true --allow-root

# FIX NODE_MODULES PATH
ENV NODE_PATH=/usr/local/lib/node_modules/