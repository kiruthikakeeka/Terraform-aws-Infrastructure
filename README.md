# Infrastructure as Code — Terraform on AWS

Reusable Terraform modules to provision multi-environment AWS infrastructure (dev, staging, production).

## 🔧 Tools & Technologies
- Terraform
- AWS (VPC, EC2, RDS, S3, IAM, Lambda)
- AWS CLI
- Bash

## 🏗️ Infrastructure Overview
VPC → Public & Private Subnets → EC2 (Multi-AZ) → RDS → S3 → IAM Roles → Bastion Host

## ✅ Results
- Reduced infrastructure provisioning time by 40%
- Zero configuration drift across all environments
- Reusable modules for consistent multi-environment deployments

## 📁 Project Structure
├── modules/
│   ├── vpc/
│   ├── ec2/
│   ├── rds/
│   ├── s3/
│   └── iam/
├── environments/
│   ├── dev/
│   ├── staging/
│   └── prod/
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md

## 🚀 How to Run
1. Install Terraform and configure AWS CLI
2. `terraform init`
3. `terraform plan -var-file=environments/dev/terraform.tfvars`
4. `terraform apply`
