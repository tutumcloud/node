# tutum-node

Run your Tutum node inside a container!

## Usage (using Docker)

	docker run -d --net=host --privileged -e TUTUM_TOKEN=<token> tutum/node

## Usage (using Vagrant)

	git clone https://github.com/tutumcloud/tutum-node.git; cd tutum-node
	TUTUM_TOKEN=<token> vagrant up
