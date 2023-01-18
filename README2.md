# Documentação

Este projeto tem como objetivo automatizar o processo de deploy de um cluster EKS  utilizando o Terraform e mantendo a estrutura básica do projeto. Para isso, separei o projeto em uma pasta chamada "terraform", dentro dela existem duas pastas "infra" e "env" onde a pasta "infra" contem um modelo para deploy, e a pasta "env" pode ser utilizada para vários ambientes, tais como "develop" e "produção".

Para isso, utilizei as seguintes ferramentas:

* Terraform: Utilizado para gerenciar a infraestrutura de forma declarativa.
* Github Actions: Utilizado para automatizar o processo de deploy, garantindo que as alterações sejam implementadas de forma consistente e segura.


## Execução do Terraform
A pasta raiz para execução do Terraform é a pasta "terraform/env/prod". Dentro dessa pasta você pode executar os comandos do Terraform, como "terraform init" para inicializar o projeto, "terraform plan" para visualizar as alterações que serão realizadas, e "terraform apply" para aplicar as alterações.


## Adição do Node module ESLint
Durante o desenvolvimento deste projeto, foi necessário adicionar o Node module ESLint para garantir a qualidade do código.

## Variáveis  / secrets
Para o projeto devem ser sentadas algumas secrets dentro da estrutura do github:


* AWS_ACCESS_KEY_ID => Variável access key da conta aws.
* AWS_SECRET_ACCESS_KEY => Variável Secret access da conta aws.
* DOCKERHUB_TOKEN => Token gerado na conta dockerhub para upload da imagem docker.
* DOCKERHUB_USER => Usuário dockerhub.
* K8S_CONFIG => Kubeconfig gerado no passo de EKS.
