variable "environment" {
  description = "Production, Development, etc"
  default     = "Dev"
}

variable "tag_buildby" {
  description = "who built the resource."
  default     = ""
}

variable "tag_builddate" {
  description = "Date in ISO-8601 format (yyyymmdd)."
  default     = "20210129"
}

variable "resource_group_name" {
  description = "Name of the Resource Group to create in."
  default     = "dns_rsg"
}

variable "location" {
  description = "Region to deploy into."
  default     = "uksouth"
}

variable "private_dns_zone_name" {
  description = "Name of DNS Zone"
  default     = ""
}

variable "private_dns_zone_virtual_network_link" {
  description = "Name of virtual network link"
  default     = "dns_link"
}

variable "virtual_network_id" {
  description = "virtual network id to link"
  default     = ""
}

variable "private_dns_a_record" {
  description = "Name of DNS A Record"
  default     = "arecord"
}

variable "private_dns_cname_record" {
  description = "Name of DNS cname Record"
  default     = "cname"
}

variable "ttl" {
  description = "TTL of DNS record in seconds"
  default     = "300"
}

variable "dns_records" {
  description = "IPv4 address of record"
  type        = list(string)
  default     = [""]
}

variable "record" {
  description = "The target of the CNAME"
  default     =  "contoso.com"
}
