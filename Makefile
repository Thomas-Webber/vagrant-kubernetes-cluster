install:				## Provision and configure a cluster
	cd vagrant && vagrant up

clean:					## Delete the cluster
	cd vagrant && vagrant destroy -f

### Experiments
deploy-simple-api: ## Deploy a simple api on port 8080
	kubectl apply -f kubernetes/simple-api/deployment.yml
	kubectl apply -f kubernetes/simple-api/service.yml
