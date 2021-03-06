FROM circleci/python:3.9-buster

RUN sudo pip install "ansible" --upgrade

RUN wget -P /tmp https://github.com/adammck/terraform-inventory/releases/download/v0.9/terraform-inventory_0.9_linux_amd64.zip &&\
    sudo unzip /tmp/terraform-inventory_0.9_linux_amd64.zip -d /usr/local/bin &&\
    rm /tmp/terraform-inventory_0.9_linux_amd64.zip
