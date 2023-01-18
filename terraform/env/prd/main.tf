module "prod" {
    source          = "../../infra"
    cluster_name    = "app_producao"
    regiao_aws      = "us-east-1"
}