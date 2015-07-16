# tutum/node

Get your `<token>` by clicking on `Bring your own node` in Tutum's [Nodes dashboard](https://dashboard.tutum.co/node/cluster/list/)

## Usage (using Docker)

Run your Tutum node inside a container!

	docker run -d --net=host --privileged --restart=always -e TUTUM_TOKEN=<token> tutum/node

## Usage (using Vagrant)

Run your Tutum node inside a Vagrant box!

	vagrant init tutum/node
	TUTUM_TOKEN=<token> vagrant up
