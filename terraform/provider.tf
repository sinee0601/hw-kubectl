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

