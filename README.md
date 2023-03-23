# terraform-sample
Terraform sample project with Microsoft azure cloud.

## Prerequisites
1. Install Azure cli if haven't installed [link](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli).
1. Install terraform if haven't installed [link](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
## Common Commands
``` poweshell
az login
az account list
az account set --subscription="SUBSCRIPTION_ID"
# navigate to dev workspace to run terraform commands
cd ../az/dev
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply

```
