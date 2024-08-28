variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
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
}