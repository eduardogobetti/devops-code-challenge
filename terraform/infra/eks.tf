module "eks" {
    source  = "terraform-aws-modules/eks/aws"
  
    cluster_name                    = var.cluster_name
    cluster_version                 = "1.24"
    cluster_endpoint_public_access  = true
   
    vpc_id                          = module.vpc.vpc_id
    subnet_ids                      = module.vpc.private_subnets
  
    eks_managed_node_groups = {
        app_producao = {
            min_size                = 1
            max_size                = 3
            desired_size            = 2
            vpc_security_group_ids  = [aws_security_group.k8s_sec_group.id]
            instance_types          = ["t2.micro"]
            

            labels = {
                sistema = "app_producao"
            }
        }
    }
}