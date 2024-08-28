# General
region       = "us-east-1"
cluster_name = "HorsingAround"

# Network
vpc_cidr = "10.0.0.0/16"
azs      = ["us-east-1a", "us-east-1b", "us-east-1c"]

# Compute
enable_addons   = true
node_group_name = "HA-node-group"
instance_types  = ["t3a.large"]
desired_size    = 2
max_size        = 3
min_size        = 1

# EKS Cluster Configuration
kubernetes_version      = "1.27" 
endpoint_private_access = false
endpoint_public_access  = true

# EKS Addons
enable_vpc_cni_addon        = true
enable_coredns_addon        = true
enable_kube_proxy_addon     = true
enable_ebs_csi_driver_addon = true

# ArgoCD
argocd_version     = "3.35.4"
argocd_namespace   = "argocd"
argocd_values_file = "./modules/argocd/values.yaml"

# Tags
owner           = "Carmit.Haas"
bootcamp        = "BC21"
expiration_date = "30-09-24"