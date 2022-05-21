variable "instance_family_image" {
  description = "Instance image"
  type        = string
  default     = "lamp"
}

variable "instance_name" {
  description = "Instance name"
  type        = string
  default     = "1"
}

variable "vpc_subnet_id" {
  description = "VPC subnet network id"
  type        = string
}