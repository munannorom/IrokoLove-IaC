# Terraform Infrastructure as Code

This Terraform project automates the deployment of infrastructure for a development environment.

## Overview

The Terraform configuration in this project creates the following resources:
- AWS VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- Key Pair
- EC2 Instance

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/)

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/your-repository.git
    cd your-repository
    ```

2. Initialize Terraform:

    ```bash
    terraform init
    ```

3. Adjust Variables:
   Open `variables.tf` and update the variables according to your requirements.

    ```hcl
    variable "host_os" {
        type    = string
        default = "windows"
    }
    ```

    Review the available variables and update them as needed for your environment.

4. Configure Providers:

    Open `providers.tf` and update the provider configurations with your AWS credentials or other relevant details.

    ```hcl
    terraform {
      required_providers {
        aws = {
          source  = "hashicorp/aws"
          version = "~> 5.0"
        }
      }
    }

    provider "aws" {
      region                   = "us-east-1"
      shared_config_files      = ["~/.aws/conf"]
      shared_credentials_files = ["~/.aws/credentials"]
      profile                  = "irokolove-cli"
    }
    ```
5. Apply Changes:

    ```bash
    terraform apply
    ```

    Confirm the changes by typing `yes` when prompted.

## Terraform Configuration

The main configuration file (`main.tf`) defines the following resources:

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- Key Pair
- EC2 Instance

## Providers

The `providers.tf` file specifies the required provider for this Terraform configuration. It configures the AWS provider with the region and AWS profile details.

## Outputs

The `outputs.tf` file contains configurations for exposing specific values after applying the Terraform configuration. Review the file to understand what information will be available as outputs.

For example, if you have an output named `dev_ip` for the EC2 instance, you can retrieve it after applying the configuration using:
```bash
terraform output dev_ip
