## Log in to Azure
az login

## Create an Azure AD application
az ad app create --display-name "MyTerraformApp"

## Get the Application (Client) ID (client_id)
az ad app show --id <Application_ID> --query appId --output tsv

## Create a Client Secret and get its value (client_secret)
az ad app credential reset --id <Application_ID>

## Get the Tenant ID (tenant_id)
az account show --query tenantId --output tsv

## Unset below config in case you get error (allow_broker=True is only supported in PublicClientApplication)
az config unset core.allow_broker

## Login with your service user
az login --service-principal -u \
xxxxx-xxxxxxxxxxxxx \
-p xxxxxxxxxxxxxxxxx \
--tenant xxxxxxxxxx

## Initialize
terraform init

## Check the plan
terraform plan -var-file="secrets.tfvars"

## Apply 
terraform apply