

install:				## Provision and configure servers
	# cd vagrant && vagrant up
	# ansible-galaxy install -r ansible/requirements.yml
	cd ansible && ansible-playbook -i hosts site.yml

clean:
	cd vagrant && vagrant destroy -f
