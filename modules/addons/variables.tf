variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "oidc_provider" {
  description = "OIDC provider URL for the EKS cluster"
  type        = string
}

variable "enable_vpc_cni_addon" {
  description = "Enable VPC CNI addon for EKS"
  type        = bool
  default     = true
}

variable "enable_coredns_addon" {
  description = "Enable CoreDNS addon for EKS"
  type        = bool
  default     = true
}

variable "enable_kube_proxy_addon" {
  description = "Enable kube-proxy addon for EKS"
  type        = bool
  default     = true
}

variable "enable_ebs_csi_driver_addon" {
  description = "Enable EBS CSI driver addon for EKS"
  type        = bool
  default     = true
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