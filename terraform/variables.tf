variable "public_key_loc" {
  default = "C:/Users/Vijay Krishna/Desktop/terraform_quickstart/azure-terraform-quickstart/terraform/scripts.pub"
}

variable "resource_group_location" {
  type        = string
  default     = "Sweden Central"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "vj"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}