FROM tutum/dind:latest

ENV GPG_KEY_ID A87A2270
ENV TUTUM_REPO https://repo.tutum.co/ubuntu/
ENV AGENT_VERSION 0.11.2

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys $GPG_KEY_ID
RUN gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys $GPG_KEY_ID
RUN echo deb [arch=amd64] $TUTUM_REPO tutum main > /etc/apt/sources.list.d/tutum.list
RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get install -yq tutum-agent=$AGENT_VERSION

ENV CERT_COMMON_NAME *.node.tutum.io
ENV DOCKER_HOST tcp://0.0.0.0:2375
ENV TUTUM_HOST https://dashboard.tutum.co/

ADD run.sh /

EXPOSE 2375
CMD ["/run.sh"]