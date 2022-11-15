terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.37.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "tfe" {
}

data "tfe_outputs" "cookbooks" {
  organization = "sous-chefs"
  workspace    = "terraform-github-repository"
}

data "tfe_outputs" "development-kubernetes-cluster-fundamentals" {
  organization = "Xorima"
  workspace    = "development-kubernetes-cluster-fundamentals"
}

output "cookbooks" {
    value = data.tfe_outputs.cookbooks
  sensitive = true
}