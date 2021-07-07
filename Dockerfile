FROM jhipster:jhipster

USER root

RUN /bin/sh -c curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install

RUN /bin/sh -c apt update && apt install python-pip -y && pip install awsebcli --upgrade
