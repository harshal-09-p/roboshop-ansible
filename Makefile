default:
	git pull
	ansible-playbook -i $(app_name)-dev.harshaldevops.online, -e ansible_user=harshal -e ansible_password=harshal@12345 -e app_name=$(app_name) -e env=$(env) roboshop.yml

all:
	git pull
	make app_name=frontend env=dev
	make app_name=mongodb env=dev
	make app_name=catalogue env=dev
	make app_name=redis env=dev
	make app_name=user env=dev
	make app_name=cart env=dev
	make app_name=mysql env=dev
	make app_name=shipping env=dev
	make app_name=rabbitmq env=dev
	make app_name=payment env=dev
	make app_name=dispatch env=dev