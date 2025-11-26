output "instance_id" {
  description = "Master 서버 VM ID"
  value       = cloudstack_instance.master.id
}

output "instance_ip" {
  description = "Master 서버 IP 주소"
  value       = cloudstack_instance.master.ip_address
}

output "instance_name" {
  description = "Master 서버 이름"
  value       = cloudstack_instance.master.name
}