data "cloudstack_template" "ubuntu" {
  template_filter = "featured"
  filter {
    name  = "name"
    value = "Ubuntu_24.04_VSCode"
  }
}

data "cloudstack_zone" "dku" {
  filter {
    name  = "name"
    value = "DKU"
  }
}

data "cloudstack_service_offering" "small" {
  filter {
    name  = "name"
    value = "Small"
  }
}

data "cloudstack_service_offering" "medium" {
  filter {
    name  = "name"
    value = "Medium"
  }
}

