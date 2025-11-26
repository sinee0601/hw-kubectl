output "master_node" {
  description = "Master Node IP 및 이름"
  value = {
    ip   = module.master.instance_ip
    name = module.master.instance_name
  }
}

output "worker_nodes" {
  description = "Worker Nodes IP 및 이름 목록"
  value = {
    ips   = module.worker.instance_ips
    names = module.worker.instance_names
  }
}

output "all_ips" {
  description = "모든 노드 IP 주소 목록"
  value = concat(
    [module.master.instance_ip],
    module.worker.instance_ips,
  )
}

resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/inventory.tpl", {
    master_ip = module.master.instance_ip
    worker_ips = module.worker.instance_ips
  })

  filename = "${path.module}/../ansible/inventory"
}