[k8s_master]
master-0 ansible_host=${master_ip}

[k8s_worker]
%{ for idx, ip in worker_ips ~}
worker-${idx} ansible_host=${ip}
%{ endfor ~}

[all:vars]
ansible_user=ubuntu
ansible_python_interpreter=/usr/bin/python3