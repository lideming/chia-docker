FROM ubuntu:20.04

RUN apt update && apt upgrade -y \
    && apt install -y python3.8-venv python3.8-distutils python3-pip git

RUN git clone https://github.com/Chia-Network/chia-blockchain.git /opt/chia-blockchain -b latest

WORKDIR /opt/chia-blockchain

RUN pip3 install --upgrade pip \
    && pip3 install wheel \
    && pip3 install --extra-index-url https://pypi.chia.net/simple/ miniupnpc==2.1 \
    && pip3 install -e . --extra-index-url https://pypi.chia.net/simple/
