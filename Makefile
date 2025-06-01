default:
	git pull
	ansible-playbook -i $(app_name)-dev.harshaldevops.online, -e ansible_user=harshal -e ansible_password=harshal@12345 -e app_name=$(app_name) -e env=dev roboshop.yml

all:
	git pull
	make app_name=frontend
	make app_name=mongodb
	make app_name=catalogue
	make app_name=redis
	make app_name=user
	make app_name=cart
	make app_name=mysql
	make app_name=shipping
	make app_name=rabbitmq
	make app_name=payment
	make app_name=dispatch