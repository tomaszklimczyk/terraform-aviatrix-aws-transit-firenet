variable "region" {
  description = "The AWS region to deploy this module in"
  type = string
}

variable "cidr" {
  description = "The CIDR range to be used for the VPC"
  type = string
}

variable "aws_account_name" {
  description = "The AWS account name, as known by the Aviatrix controller"
  type = string
}

variable "instance_size" {
  description = "AWS Instance size for the Aviatrix gateways"
  type    = string
  default = "c5.xlarge"
}

variable "fw_instance_size" {
  description = "AWS Instance size for the NGFW's"
  type    = string
  default = "c5.xlarge"
}

variable "ha_gw" {
  description = "Boolean to determine if module will be deployed in HA or single mode"
  type    = bool
  default = true
}

variable "fw_amount" {
  description = "Integer that determines the amount of NGFW instances to launch"
  type    = number
  default = 2
}

variable "attached" {
  description = "Boolean to determine if the spawned firewall instances will be attached on creation"
  type    = bool
  default = true
}

variable "firewall_image" {
  description = "The firewall image to be used to deploy the NGFW's"
  type    = string
}

variable "iam_role" {
  description = "The IAM role for bootstrapping"
  type    = string
  default = null
}

variable "bootstrap_bucket_name" {
  description = "The firewall bootstrap bucket name"
  type    = string
  default = null
}
