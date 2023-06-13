# Terraform test for plannable import functionality in terraform 1.5

## Required
- Must use terraform 1.5 for plannable import
- I'm using tfswtich in order to use this version of terraform

## Variables Needed
* gcp_project
* gcp_creds
* service_account_email
  - this is needed when you need the plan to pass but you are not planning to have terraform generate the config from generate-config-out
  - `terraform plan -generate-config-out=generated.tf`

Terraform will only create the generated.tf file if resource blocks are not already created.

## Some Conclusions that require further experimentation
* If you are importing resources across zones, provider alias appears to be necessary
* If you plan to just validate the plan, then you need to provide a complete config in addition to the import block and the resource that is being imported will need the provider alias as well