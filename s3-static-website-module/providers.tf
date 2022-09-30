provider "aws" {
  region = var.region
}

### this is needed for the acm certificate, Leave as is because acm certificates must be created in this region ###
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}


### this is for the second aws account that owns the domain ###
provider "aws" {
  alias = "test"
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}
