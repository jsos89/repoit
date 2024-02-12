terraform {
  required_version = ">= 1.3.0"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "entrenamientoit"
    workspaces {
      name = "repoit"
    }
  }
}
