variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "azs" {
  description = "Availability Zones"
  type        = list(string)
}

variable "owner" {
  description = "Owner tag value"
  type        = string
}

variable "bootcamp" {
  description = "Bootcamp tag value"
  type        = string
}

variable "expiration_date" {
  description = "Expiration date tag value"
  type        = string
}
