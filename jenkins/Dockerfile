FROM jenkins/jenkins:lts

USER root

RUN apt-get -y update && \
    apt-get -y install apt-transport-https \
                       ca-certificates \
                       curl \
                       gnupg-agent \
                       software-properties-common

RUN curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") $(lsb_release -cs) stable" && \
    apt-get -y update && \
    apt-get -y install docker-ce

RUN usermod -aG docker jenkins

USER jenkins
