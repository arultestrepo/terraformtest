# terraformtest
## Update test.tfvars with appropriate bucket and key and execute below commands
terraform init -backend-config=test.tfvars
terraform get
terraform plan
terraform apply
