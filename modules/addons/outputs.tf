output "vpc_cni_addon_arn" {
  description = "ARN of the VPC CNI addon"
  value       = var.enable_vpc_cni_addon ? aws_eks_addon.vpc_cni[0].arn : "Disabled"
}

output "coredns_addon_arn" {
  description = "ARN of the CoreDNS addon"
  value       = var.enable_coredns_addon ? aws_eks_addon.coredns[0].arn : "Disabled"
}

output "kube_proxy_addon_arn" {
  description = "ARN of the kube-proxy addon"
  value       = var.enable_kube_proxy_addon ? aws_eks_addon.kube_proxy[0].arn : "Disabled"
}

output "ebs_csi_driver_addon_arn" {
  description = "ARN of the EBS CSI driver addon"
  value       = var.enable_ebs_csi_driver_addon ? aws_eks_addon.ebs_csi_driver[0].arn : "Disabled"
}