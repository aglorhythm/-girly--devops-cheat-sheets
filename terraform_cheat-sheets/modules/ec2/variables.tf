variable "instance_details" {
  description = "A list of maps containing details for each instance to be created."
  type = list(object({
    name       : string
    type       : string
    subnet_id  : string
    ami        : string
    key_name   : string
  }))
}

variable "security_group_ids" {
  description = "List of security group IDs to attach to each instance."
  type        = list(string)
}
