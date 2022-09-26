FROM jhipster/jhipster:v7.0.1

USER root

RUN apt-get update && apt-get install unzip -y

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install

RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py && python get-pip.py && pip install awsebcli==3.19.4 pyrsistent==0.16.0 botocore==1.19.63

RUN apt-get -yqq update && apt-get -yqq install docker.io && usermod -g docker jhipster

RUN apt-get -yqq install mysql-client

