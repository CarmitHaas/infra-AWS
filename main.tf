module "network" {
  source       = "./modules/network"
  vpc_cidr     = var.vpc_cidr
  cluster_name = var.cluster_name
  azs          = var.azs
  owner        = var.owner
  bootcamp     = var.bootcamp
  expiration_date = var.expiration_date
}

module "compute" {
  source           = "./modules/compute"
  cluster_name     = var.cluster_name
  vpc_id           = module.network.vpc_id
  subnet_ids       = module.network.subnet_ids
  node_group_name  = var.node_group_name
  instance_types   = var.instance_types
  desired_size     = var.desired_size
  max_size         = var.max_size
  min_size         = var.min_size
  owner            = var.owner
  bootcamp         = var.bootcamp
  expiration_date  = var.expiration_date
  kubernetes_version = var.kubernetes_version
  endpoint_private_access = var.endpoint_private_access
  endpoint_public_access  = var.endpoint_public_access
}

module "addons" {
  source = "./modules/addons"
  cluster_name = module.compute.cluster_name
  oidc_provider = module.compute.oidc_provider
  enable_vpc_cni_addon = var.enable_vpc_cni_addon
  enable_coredns_addon = var.enable_coredns_addon
  enable_kube_proxy_addon = var.enable_kube_proxy_addon
  enable_ebs_csi_driver_addon = var.enable_ebs_csi_driver_addon
  owner        = var.owner
  bootcamp     = var.bootcamp
  expiration_date = var.expiration_date
}

module "ingress_nginx" {
  source = "./modules/ingress-nginx"
  owner        = var.owner
  bootcamp     = var.bootcamp
  expiration_date = var.expiration_date
  depends_on = [module.compute]
  providers = {
    kubernetes = kubernetes
    helm       = helm
  }
}

module "argocd" {
  source             = "./modules/argocd"
  cluster_name       = module.compute.cluster_name
  argocd_version     = var.argocd_version
  argocd_namespace   = var.argocd_namespace
  argocd_values_file = var.argocd_values_file
  depends_on         = [module.ingress_nginx]
  providers = {
    kubernetes = kubernetes
    helm      = helm
  }
}