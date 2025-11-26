module "master" {
  source = "./modules/master"
  
  name                 = "master-${var.student_id}"
  service_offering_id  = data.cloudstack_service_offering.medium.id
  network_id           = var.shared_network_id
  template_id          = data.cloudstack_template.ubuntu.id
  zone_name            = data.cloudstack_zone.dku.name
}


module "worker" {
  source = "./modules/worker"
  
  instance_count       = 2
  name_prefix          = "worker-${var.student_id}"
  service_offering_id  = data.cloudstack_service_offering.medium.id
  network_id           = var.shared_network_id
  template_id          = data.cloudstack_template.ubuntu.id
  zone_name            = data.cloudstack_zone.dku.name
  root_disk_size       = var.root_disk_size
}