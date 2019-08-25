export ANSIBLE_HOST_KEY_CHECKING=False

install:				## Provision and configure servers
	cd vagrant && vagrant up
	ansible-galaxy install -r ansible/requirements.yml
	cd ansible && ansible-playbook -i hosts site.yml

clean:
	cd vagrant && vagrant destroy -f

ssh:						## Connect to master node
	ssh root@192.168.10.121
