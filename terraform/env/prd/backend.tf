terraform {
    backend "s3" {
        bucket = "terraform-state-gobetti"
        key    = "prod/terraform.tfstate"
        region = "us-east-1"
    }
}