variable "name" {
  description = "Master VM 이름"
  type        = string
}

variable "service_offering_id" {
  description = "Service Offering ID"
  type        = string
}

variable "network_id" {
  description = "Network ID"
  type        = string
}

variable "template_id" {
  description = "Template ID"
  type        = string
}

variable "zone_name" {
  description = "Zone 이름"
  type        = string
}

variable "root_disk_size" {
  description = "루트 디스크 크기 (GB)"
  type        = number
  default     = 20
}