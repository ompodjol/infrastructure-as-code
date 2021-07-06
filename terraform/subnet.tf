resource "aws_default_subnet" "default_az1" {
  availability_zone = "eu-central-1a"

  tags = {
    "Terraform" : "true"
  }
}

resource "aws_default_subnet" "default_az2" {
  availability_zone = "eu-central-1b"

  tags = {
    "Terraform" : "true"
  }
}
