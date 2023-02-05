# This block specifies the details for the AWS provider and the region in which the EC2 instances, VPC and the ELB will be created.

provider "aws" {
  region = var.project_region
}

# This block specifies provider details, source and version for name.com

terraform {
  required_providers {
    namedotcom = {
      source   = "lexfrei/namedotcom"
      version  = "1.2.4"
    }
  }
}


provider "namedotcom" {
  token    = var.token
  username = var.username

}