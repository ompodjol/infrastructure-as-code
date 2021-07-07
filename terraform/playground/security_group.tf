resource "aws_security_group" "dev_web" {
  name        = "dev_web"
  description = "Allow standard http and https ports inbound and everything outbound"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # TO DO: replace with my host ip
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # TO DO: replace with my host ip
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #allow all protocols
    cidr_blocks = var.ip_whitelist
  }

  tags = {
    "Terraform" : "true"
  }
}
