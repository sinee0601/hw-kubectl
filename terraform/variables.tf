variable "student_id" {
  description = "학번"
  type        = string
}

variable "shared_network_id" {
  description = "Shared Network ID"
  type        = string
  default     = "492737b8-5bc2-4e28-a6a7-8e29fa491587"
}

variable "root_disk_size" {
  description = "기본 루트 디스크 크기 (GB)"
  type        = number
  default     = 20
}