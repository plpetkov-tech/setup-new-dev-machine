# setup-new-dev-machine
$ git clone https://github.com/plpetkov-tech/setup-new-dev-machine
$ cd setup-new-dev-machine
$ sudo apt update  
$ sudo apt install software-properties-common               
$ sudo apt-add-repository --yes --update ppa:ansible/ansible
$ sudo apt install -y git ansible python curl
$ ansible-playbook -i ansible.cfg setup.yaml  (edit the username in setup.yaml before running)
