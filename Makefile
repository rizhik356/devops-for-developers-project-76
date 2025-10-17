install-role:
	ansible-galaxy install -r requirements.yml

prepare-servers:
	ansible-playbook playbook.yml -i inventory.ini

redmine-deploy:
	ansible-playbook --vault-password-file .password playbook.yml -i inventory.ini -t deploy

setup-datadog:
	ansible-playbook datadog_playbook.yml --vault-password-file .password