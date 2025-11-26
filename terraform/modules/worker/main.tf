terraform {
  required_providers {
    cloudstack = {
      source  = "cloudstack/cloudstack"
      version = "~> 0.5.0"
    }
  }
  required_version = ">= 1.0"
}

provider "cloudstack" {
  api_url    = "https://dku.kloud.zone/client/api"
  api_key    = "8IMpAHwJ4gZyzJ3mRGbIRTGAOnro-HVr0lvMMbBeP0k4VLXM9pNc0taXcE3y2417ICoTu1F0uG70yoXNU0Xkfg"
  secret_key = "bWyyf4IIo5H8wkpE3LSgDqJNxLLfn1paEilYdxrltqJhtly6GDCw2dmOUeB0B5eDA1V7XrYvsOx-wmcls_Vdpw"
}


resource "cloudstack_instance" "worker" {
  count            = var.instance_count 
  name             = "${var.name_prefix}-${count.index}"
  service_offering = var.service_offering_id
  network_id       = var.network_id
  template         = var.template_id
  zone             = var.zone_name
  root_disk_size   = var.root_disk_size
  expunge          = true

  user_data = <<-EOT
    #cloud-config
    password: ubuntu
    chpasswd: { expire: False }
    ssh_pwauth: True
    runcmd:
      - echo "Worker Server ${count.index}" > /tmp/role.txt
      - date >> /tmp/role.txt
      - hostname >> /tmp/role.txt
  EOT
}