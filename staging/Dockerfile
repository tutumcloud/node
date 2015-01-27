FROM tutum/dind:latest

ENV GPG_KEY_ID A87A2270
ENV GPG_KEY_STAGING_ID 90E64D7C
ENV TUTUM_REPO https://repo-test.tutum.co/ubuntu/

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys $GPG_KEY_STAGING_ID
RUN gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys $GPG_KEY_ID
RUN echo deb [arch=amd64] $TUTUM_REPO tutum main > /etc/apt/sources.list.d/tutum.list
RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get install -yq tutum-agent

ENV CERT_COMMON_NAME *.node.tutum.io
ENV DOCKER_HOST tcp://0.0.0.0:2375
ENV TUTUM_HOST https://dashboard.tutum.co/

ADD run.sh /

EXPOSE 2375
ENTRYPOINT ["/run.sh"]