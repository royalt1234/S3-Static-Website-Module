variable "name" {
  description = "S3 bucket name/endpoint name/sub domain"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default = "eu-west-2"
}

variable "domain_name" {
  description = "apex Domain name in the master account(that is the nonprod.darey.io)"
  type        = string
}
