Default:
	ansible-playbook -i $(app_name)-dev.harshaldevops.online, -e ansible_user=harshal -e ansible_password=harshal@12345 -e role_name=$(app_name) roboshop.yml

