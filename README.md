# terraformtest
### Update test.tfvars with appropriate bucket and key and execute below commands
terraform init -backend-config=test.tfvars <br />
terraform get <br />
terraform plan <br />
terraform apply <br />
### Execute below command to clean up resources
terraform destroy
