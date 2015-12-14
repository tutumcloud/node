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

## Troubleshooting

### Re-register a node after an unintended shutdown

Use-case: Your Vagrant VM or underlying machine was experiencing a hard shutdown and your node remains *unreachable*, i.e. after 
a server crash.

In some cases a node might not be able to re-register itself correctly with tutum, to trigger a reconnection of a VM 
with an existing node entry, follow these steps:
  
Login to the node

    ssh mynode

restart the `tutum-agent` with this command.

	service tutum-agent restart

Check the logs if needed, the node may need about 1-2 minutes to come up again.
    
    tail -f /var/log/tutum/agent.log

### Re-register with existing parameters

If you're still experiencing issues, like [this one](https://github.com/tutumcloud/tutum-node/pull/1). 

Aquire your API token from your [account info page](https://dashboard.tutum.co/account/)

    export TUTUM_API_TOKEN=12345abcde12345abcde12345abcde12345abcde

Go to the [cluster list](https://dashboard.tutum.co/node/cluster/list/) and get the `BYON_TOKEN` from the modal after clicking the `Bring your own node` button. 

    export TUTUM_BYON_TOKEN=f1e2d3c4b5af1e2d3c4b5af1e2d3c4bc

Get the UUID of the node by navigating to it's URL in the [cluster list](https://dashboard.tutum.co/node/cluster/list/).
Use the last part of the URL without the slash.

    export TUTUM_NODE_UUID=1a2b3c4d-5f6a-0e0d-1a2b-1234567890ab

Set the API token value and run the command from the modal window in the Web UI. *Hint: You can also show the command with `tutum-cli`*

    sudo tutum-agent set TutumToken=$TUTUM_API_TOKEN
    curl -Ls https://get.tutum.co/ | sudo -H sh -s $TUTUM_BYON_TOKEN $TUTUM_NODE_UUID '*.node.tutum.io'
    
Check the logs, your node should register with the API under it's existing identifier.