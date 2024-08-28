terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.0.0"
    }
  }
}

resource "kubernetes_namespace" "argocd" {
  metadata {
    name = var.argocd_namespace
  }
}

resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  version          = var.argocd_version
  namespace        = kubernetes_namespace.argocd.metadata[0].name
  create_namespace = false

  values = [
    file(var.argocd_values_file)
  ]

  set {
    name  = "server.extraArgs[0]"
    value = "--insecure"
  }

  set {
    name  = "server.extraArgs[1]"
    value = "--basehref=/argocd"
  }

  set {
    name  = "server.extraArgs[2]"
    value = "--rootpath=/argocd"
  }

  depends_on = [kubernetes_namespace.argocd]

  force_update  = true
  recreate_pods = true
}

resource "null_resource" "wait_for_argocd" {
  depends_on = [helm_release.argocd]

  provisioner "local-exec" {
    command = <<EOT
      kubectl wait --for=condition=available --timeout=600s deployment/argocd-server -n ${var.argocd_namespace}
    EOT
  }
}