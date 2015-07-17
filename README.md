# tutum/node

Get your `<token>` by clicking on `Bring your own node` in Tutum's [Nodes dashboard](https://dashboard.tutum.co/node/cluster/list/)

## Usage (using Docker)

Run your Tutum node inside a container!

	docker run -d --net=host --privileged --restart=always -e TUTUM_TOKEN=<token> tutum/node

## Versions available

	tutum/node:1.4.1
	tutum/node:1.5.0
	tutum/node:1.6.2
	tutum/node:1.7.1
	tutum/node:staging (which uses development version of Tutum Agent)
	tutum/node:latest (which at the moment is the same as tutum/node:1.5.0)


## Usage (using Vagrant)

Run your Tutum node inside a Vagrant box!

	vagrant init tutum/node
	TUTUM_TOKEN=<token> vagrant up
