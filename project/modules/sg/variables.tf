variable "name" {
  description = "Name of the Security Group"
  type        = string
}

variable "description" {
  description = "Description of the Security Group"
  type        = string
  default     = "Managed by Terraform"
}

variable "vpc_id" {
  description = "VPC ID where SG will be created"
  type        = string
}

variable "ingress_from_port" {
  description = "Ingress start port"
  type        = number
}

variable "ingress_to_port" {
  description = "Ingress end port"
  type        = number
}

variable "ingress_protocol" {
  description = "Ingress protocol"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "Ingress CIDR blocks"
  type        = list(string)
}
