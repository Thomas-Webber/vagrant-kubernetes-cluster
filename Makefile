export ANSIBLE_HOST_KEY_CHECKING=False
MASTER=root@192.168.10.100

install:				## Provision and configure a cluster
	cd vagrant && vagrant up
	ansible-galaxy install -r ansible/requirements.yml
	cd ansible && ansible-playbook -v -i hosts site.yml

clean:					## Delete the cluster
	cd vagrant && vagrant destroy -f

sync:
	rsync -r --delete ./kubernetes $(MASTER):~

ssh: sync 			## Connect to the master node
	ssh $(MASTER)


### Experiments
deploy-simple-api: ## Deploy a simple api on port 8080
	ssh $(MASTER) 'kubectl apply -f kubernetes/simple-api/deployment.yml'
	ssh $(MASTER) 'kubectl apply -f kubernetes/simple-api/service.yml'
