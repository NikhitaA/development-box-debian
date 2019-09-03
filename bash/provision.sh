#!/usr/bin/expect -f

set task [lindex $argv 0]

set timeout -1

spawn ansible-playbook -i "10.3.1.3," --private-key=/vagrant/.vagrant/machines/default/virtualbox/private_key -u vagrant -K playbook.yml

expect "SUDO password:"

send -- "vagrant\r"

expect eof
