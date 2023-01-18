provider "aws" {
    profile = "default"
    region  = var.regiao_aws
}

terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

