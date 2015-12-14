#!/bin/bash

mkdir -p /etc/tutum/agent/
if [ ! -f "/etc/tutum/agent/tutum-agent.conf" ]; then
    cat > /etc/tutum/agent/tutum-agent.conf <<EOF
{
    "CertCommonName":"${CERT_COMMON_NAME}",
    "DockerHost":"${DOCKER_HOST_LISTEN}",
    "TutumHost":"${TUTUM_HOST}",
    "TutumToken":"${TUTUM_TOKEN}",
    "TutumUUID":"${TUTUM_UUID}"
}
EOF
fi

echo "Using tutum-agent.conf:"
cat /etc/tutum/agent/tutum-agent.conf

mkdir -p /var/log/tutum && touch /var/log/tutum/docker.log && tail -F /var/log/tutum/docker.log &
exec /usr/bin/tutum-agent -stdout "$@"