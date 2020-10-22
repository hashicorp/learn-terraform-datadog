terraform {
  required_providers {
    datadog = {
      source  = "datadog/datadog"
      version = "~> 2.12"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 1.2"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 1.11"
    }
  }

  required_version = "~> 0.13.5"
}
