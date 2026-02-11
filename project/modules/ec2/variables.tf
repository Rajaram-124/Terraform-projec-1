variable "ami" {}
variable "instance_type" {}

variable "name" {}
variable "vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
  default     = []
}
