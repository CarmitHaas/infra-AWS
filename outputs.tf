output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.compute.cluster_endpoint
}

output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = module.compute.cluster_name
}

output "argocd_url" {
  description = "URL of the ArgoCD server"
  value       = module.argocd.argocd_url
}

output "vpc_cni_addon_arn" {
  description = "ARN of the VPC CNI addon"
  value       = module.addons.vpc_cni_addon_arn
}

output "coredns_addon_arn" {
  description = "ARN of the CoreDNS addon"
  value       = module.addons.coredns_addon_arn
}

output "kube_proxy_addon_arn" {
  description = "ARN of the kube-proxy addon"
  value       = module.addons.kube_proxy_addon_arn
}

output "ebs_csi_driver_addon_arn" {
  description = "ARN of the EBS CSI driver addon"
  value       = module.addons.ebs_csi_driver_addon_arn
}