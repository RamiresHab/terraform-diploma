[masters]
%{ for index, ip in master_nodes ~}
master${index+1} ansible_host=${ip} ansible_user=ro.khabibullin
%{ endfor ~}

[workers]
%{ for index, ip in worker_nodes ~}
worker${index+1} ansible_host=${ip} ansible_user=ro.khabibullin
%{ endfor ~}

[all:vars]
ansible_python_interpreter=/usr/bin/python3