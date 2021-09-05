resource "azurerm_private_dns_zone" "dns_zone" {
  name                = var.private_dns_zone_name
  resource_group_name = var.resource_group_name
  
  tags = {
    Environment = var.environment
    BuildBy     = var.tag_buildby
    BuildDate   = var.tag_builddate
  }
}  

resource "azurerm_private_dns_zone_virtual_network_link" "dns_link" {
  name                  = var.private_dns_zone_virtual_network_link
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.dns_zone.name
  virtual_network_id    = var.virtual_network_id
}

resource "azurerm_private_dns_a_record" "arecord" {
  name                = var.private_dns_a_record
  zone_name           = azurerm_private_dns_zone.dns_zone.name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl
  records             = var.dns_records
}

resource "azurerm_private_dns_cname_record" "cname" {
  name                = var.private_dns_cname_record
  zone_name           = azurerm_private_dns_zone.dns_zone.name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl
  record              = var.record
}
