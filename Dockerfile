FROM circleci/python:3.6.4-stretch

RUN sudo pip install "ansible" --upgrade

RUN wget https://github.com/adammck/terraform-inventory/releases/download/v0.6.1/terraform-inventory_v0.6.1_linux_amd64.zip &&\
    unzip terraform-inventory_v0.6.1_linux_amd64.zip &&\
    rm unzip terraform-inventory_v0.6.1_linux_amd64.zip
