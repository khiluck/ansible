update:
	ansible-playbook -vvv update-servers.yml -i hosts

newupdate:
	ansible-playbook update-new.yml -i hosts

routerupdate:
	ansible-playbook update-new.yml -i hosts -l router

temp:
	ansible -i hosts kvmhosts -m command -a 'cat /sys/class/thermal/thermal_zone1/temp'