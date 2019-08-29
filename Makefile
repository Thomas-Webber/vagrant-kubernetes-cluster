export ANSIBLE_HOST_KEY_CHECKING=False
export ANSIBLE_BECOME=yes

install:				## Provision and configure a cluster
	cd vagrant && vagrant up
# 	ansible-galaxy install -r ansible/requirements.yml
# 	ansible-playbook -v -i ansible/hosts ansible/site.yml
# 	./kubernetes/config.sh

clean:					## Delete the cluster
	cd vagrant && vagrant destroy -f


### Experiments
deploy-simple-api: ## Deploy a simple api on port 8080
	kubectl apply -f kubernetes/simple-api/deployment.yml
	kubectl apply -f kubernetes/simple-api/service.yml
