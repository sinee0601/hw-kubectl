output "instance_ids" {
  description = "Worker 서버 VM ID 목록"
  value       = cloudstack_instance.worker[*].id
}

output "instance_ips" {
  description = "Worker 서버 IP 주소 목록"
  value       = cloudstack_instance.worker[*].ip_address
}

output "instance_names" {
  description = "Worker 서버 이름 목록"
  value       = cloudstack_instance.worker[*].name
}