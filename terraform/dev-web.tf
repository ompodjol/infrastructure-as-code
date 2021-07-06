variable "ip_whitelist" {
  type = list(string)
}

variable "instance_image_id" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "scaling_desired_capacity" {
  type = number
}
variable "scaling_max_size" {
  type = number
}
variable "scaling_min_size" {
  type = number
}

provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

resource "aws_elb" "dev_web" {
  name      = "dev-web"
  subnets = [
    aws_default_subnet.default_az1.id,
    aws_default_subnet.default_az2.id
  ]
  security_groups = [
    aws_security_group.dev_web.id
  ]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  tags = {
    "Terraform" : "true"
  }
}
