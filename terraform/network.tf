resource "cloudstack_network" "isolated" {
  name             = "terraform-isolated-${var.student_id}" 
  display_text     = "Terraform Isolated Network"
  cidr             = "192.168.0.0/24"
  network_offering = "DefaultIsolatedNetworkOfferingWithSourceNatService"
  zone             = data.cloudstack_zone.dku.name
}

output "isolated_network_id"{
    value = cloudstack_network.isolated.id
}

