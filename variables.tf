variable "region" {
  description = "AWS region"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "azs" {
  description = "Availability Zones"
  type        = list(string)
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
}

variable "instance_types" {
  description = "List of instance types for the EKS nodes"
  type        = list(string)
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "enable_addons" {
  description = "Enable EKS addons"
  type        = bool
  default     = true
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}

variable "endpoint_private_access" {
  description = "Enable private access to the EKS cluster endpoint"
  type        = bool
  default     = false
}

variable "endpoint_public_access" {
  description = "Enable public access to the EKS cluster endpoint"
  type        = bool
  default     = true
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

variable "argocd_version" {
  description = "Version of ArgoCD Helm chart to install"
  type        = string
}

variable "argocd_namespace" {
  description = "Kubernetes namespace to install ArgoCD"
  type        = string
}

variable "argocd_values_file" {
  description = "Path to the values.yaml file for ArgoCD Helm chart"
  type        = string
  default     = "./modules/argocd/values.yaml"
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