provider "aws" {
  region = var.aws_region
}

# VPC
module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  environment = var.environment
}

# EC2
module "ec2" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  environment   = var.environment
}

# S3
module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  environment = var.environment
}

# IAM
module "iam" {
  source      = "./modules/iam"
  environment = var.environment
}
