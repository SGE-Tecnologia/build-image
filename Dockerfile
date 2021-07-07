FROM jhipster/jhipster:v6.10.5

USER root

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install

RUN apt-get install python-pip -y && pip install awsebcli --upgrade
