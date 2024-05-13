# The CIDR block for the VPC
variable "cidr_block" {
  description = "The CIDR block for the subnets"
  type        = string
  default     = "10.0.0.0/16"
}


# Availability Zones
variable "azs" {
  type        = list(string)
  description = "List of availability zones in which to create subnets."
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}
