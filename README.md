# tutum-node

Run your Tutum node inside a container!

Get your `<token>` by clicking on `Bring your own node` in Tutum's [Nodes dashboard](https://dashboard.tutum.co/node/cluster/list/)

## Usage (using Docker)

	docker run -d --net=host --privileged -e TUTUM_TOKEN=<token> tutum/node

## Usage (using Vagrant)

	vagrant init tutum/node
	TUTUM_TOKEN=<token> vagrant up
