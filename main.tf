module "appservice" {
  source  = "app.terraform.io/hashidemos/appservice/azurerm"
  version = "0.0.6"

  app_name    = "ninjas-skunkworks-nginx"
  description = "a skunkworks project"
  environment = var.environment
  owner       = "008103"
}

variable "environment" {}

output "http_addr" { value = module.appservice.azure-appsvc-address }
