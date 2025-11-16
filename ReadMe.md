# Azure Infrastructure Deployment with Terraform

This repository contains Terraform configuration files for provisioning Azure infrastructure including Virtual Networks, Subnets, Network Security Groups, Virtual Machines, Storage Account, and App Services.

## Project Overview

Successfully deployed Azure infrastructure using Terraform with the following resources:

### Resources Deployed

- **Storage Account**: Azure Storage Account
- **Network Security Group**: `testnsg`
- **Virtual Network**: `dev-vnet`
- **Subnets**:
  - `dev-snet`
  - `app-snet`
- **Network Interface**: `nic-vm`
- **Windows Virtual Machine**: `azurevm1`
- **App Service Plan**: Azure App Service Plan
- **App Service**: Azure Web App

## Azure Configuration

**Resource Group**: `<your-resource-group-name>`

**Subscription ID**: `<your-subscription-id>`

## Deployment Summary

- **Resources Added**: 9
- **Resources Changed**: 0
- **Resources Destroyed**: 0
- **Total Deployment Time**: ~1 minute 30 seconds

## Architecture

The infrastructure consists of:

1. Azure Storage Account for data storage
2. A Virtual Network (VNet) with two subnets
3. Network Security Group for security policies
4. A Windows Virtual Machine deployed in one of the subnets
5. Network Interface attached to the VM
6. App Service Plan for hosting web applications
7. App Service (Web App) for application deployment

## Prerequisites

- Azure CLI installed and configured
- Terraform installed (version 1.0+)
- Azure subscription with appropriate permissions
- Service Principal or Azure authentication configured

## Usage

### Configure Variables

Before deploying, update the `variables.tf` file with your Azure configuration:

- **Resource Group Name**: Set your resource group name
- **Subscription ID**: Add your Azure subscription ID

### Initialize Terraform

```bash
terraform init
```

### Plan the deployment

```bash
terraform plan
```

### Apply the configuration

```bash
terraform apply --auto-approve
```

### Destroy the infrastructure

```bash
terraform destroy --auto-approve
```

## Repository Structure

```
.
├── Data.tf                 # Data sources configuration
├── providers.tf            # Azure provider configuration
├── storage.tf              # Storage account configuration
├── vm.tf                   # Virtual machine configuration
├── vnet.tf                 # Virtual network and subnet configuration
├── appservice.tf           # App Service Plan and App Service configuration
├── variables.tf            # Variable definitions (configure your RG and Subscription ID here)
└── README.md               # This file
```

## Notes

- Replace `<your-resource-group-name>` and `<your-subscription-id>` with your actual values in the variables.tf file
- All resources are provisioned in your specified resource group
- The VM is deployed into one of the created subnets
- Network Security Group rules should be configured based on security requirements

## License

This project is for educational and reference purposes.

---

**Status**: ✅ Deployment Complete and Verified
