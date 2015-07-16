FROM jpetazzo/dind:latest

ENV DOCKER_VERSION=1.5.0 GPG_KEY_ID=A87A2270 TUTUM_REPO=https://repo.tutum.co/ubuntu/ CERT_COMMON_NAME=*.node.tutum.io DOCKER_HOST=unix:///var/run/docker.sock DOCKER_HOST_LISTEN=tcp://0.0.0.0:2375 TUTUM_HOST=https://dashboard.tutum.co/

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys $GPG_KEY_ID
RUN gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys $GPG_KEY_ID
RUN echo deb [arch=amd64] $TUTUM_REPO tutum main > /etc/apt/sources.list.d/tutum.list
RUN apt-get update -q && DEBIAN_FRONTEND=noninteractive apt-get install -y tutum-agent
ADD https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION /usr/lib/tutum/docker
RUN chmod +x /usr/lib/tutum/docker && ln -s /usr/lib/tutum/docker /usr/bin/docker
ADD run.sh /

EXPOSE 2375
ENTRYPOINT ["/run.sh"]