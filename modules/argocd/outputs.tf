output "argocd_url" {
  description = "URL of the ArgoCD server"
  value       = "https://carmit-crm.zapto.org/argocd"
}

output "argocd_version" {
  value = helm_release.argocd.version
}