provider "aws" {
  version = "~> 1.2"
  region  = "us-west-2"
}

module "vpc" {
  source = "git@github.com:rackspace-infrastructure-automation/aws-terraform-vpc_basenetwork//?ref=v0.0.1"

  vpc_name   = "MyVPC"
  custom_azs = ["us-west-2a", "us-west-2b"]

  cidr_range             = "10.0.0.0/16"
  public_cidr_ranges     = ["10.0.1.0/24", "10.0.3.0/24"]
  public_subnets_per_az  = 1
  private_cidr_ranges    = ["10.0.2.0/24", "10.0.4.0/24"]
  private_subnets_per_az = 1
}
