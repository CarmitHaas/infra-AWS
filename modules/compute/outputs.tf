output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_ca_certificate" {
  description = "Certificate authority data for the cluster"
  value       = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.eks_cluster.name
}

output "cluster_token" {
  description = "Token for accessing the EKS cluster"
  value       = data.aws_eks_cluster_auth.cluster.token
  sensitive   = true
}

output "oidc_provider" {
  description = "The OpenID Connect provider URL for the EKS cluster"
  value       = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}