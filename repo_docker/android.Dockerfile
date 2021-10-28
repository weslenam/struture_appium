FROM budtmo/docker-android-x86-7.1.1

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    git \
    curl \
    wget \
    unzip \
    python3-pip

RUN pip3 install pytest
RUN pip3 install allure-pytest
RUN pip3 install Appium-Python-Client