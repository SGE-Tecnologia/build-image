FROM jhipster/jhipster:v6.10.5

USER root

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install

RUN apt-get update && apt-get install python-pip -y && pip install awsebcli==3.19.4 pyrsistent==0.16.0 botocore==1.19.63

RUN apt-get -yqq update && apt-get -yqq install docker.io && usermod -g docker jhipster

RUN apt-get -yqq install mysql-client

